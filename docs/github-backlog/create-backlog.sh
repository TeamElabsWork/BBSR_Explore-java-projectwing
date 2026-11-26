#!/usr/bin/env bash
# Idempotent GitHub backlog setup script for BBSR-explore.
# Creates labels, milestones, and the 38 baseline issues in dependency order
# from docs/github-backlog/issues-manifest.json using GitHub CLI (gh).
#
# Prerequisites:
#   - GitHub CLI (`gh`) installed and authenticated (`gh auth login`)
#   - `python3` (or `python`) available for JSON parsing
#
# Usage:
#   chmod +x docs/github-backlog/create-backlog.sh
#   ./docs/github-backlog/create-backlog.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MANIFEST="${SCRIPT_DIR}/issues-manifest.json"
REPO="TeamElabsWork/BBSR_Explore-java-projectwing"

if ! command -v gh >/dev/null 2>&1; then
  echo "Error: GitHub CLI (gh) is not installed." >&2
  exit 1
fi

PYTHON_BIN=""
if command -v python3 >/dev/null 2>&1; then
  PYTHON_BIN="python3"
elif command -v python >/dev/null 2>&1; then
  PYTHON_BIN="python"
else
  echo "Error: python3 or python is required." >&2
  exit 1
fi

echo "Verifying GitHub CLI authentication and repository access..."
gh auth status
gh repo view "${REPO}" >/dev/null

echo "Step 1: Ensuring required labels exist..."
"${PYTHON_BIN}" - "${MANIFEST}" "${REPO}" <<'PYEOF'
import json, subprocess, sys

manifest_path, repo = sys.argv[1], sys.argv[2]
with open(manifest_path, "r", encoding="utf-8") as f:
    data = json.load(f)

existing_raw = subprocess.check_output(
    ["gh", "label", "list", "--repo", repo, "--limit", "200", "--json", "name"],
    text=True,
)
existing = {item["name"].lower() for item in json.loads(existing_raw)}

for lbl in data["labels"]:
    if lbl["name"].lower() in existing:
        print(f"  [skip] Label exists: {lbl['name']}")
        continue
    subprocess.check_call([
        "gh", "label", "create", lbl["name"],
        "--repo", repo,
        "--color", lbl["color"],
        "--description", lbl["description"],
    ])
    print(f"  [created] Label: {lbl['name']}")
PYEOF

echo "Step 2: Ensuring required milestones exist..."
"${PYTHON_BIN}" - "${MANIFEST}" "${REPO}" <<'PYEOF'
import json, subprocess, sys

manifest_path, repo = sys.argv[1], sys.argv[2]
with open(manifest_path, "r", encoding="utf-8") as f:
    data = json.load(f)

existing_raw = subprocess.check_output(
    ["gh", "api", f"repos/{repo}/milestones?state=all&per_page=100"],
    text=True,
)
existing = {m["title"]: m["number"] for m in json.loads(existing_raw)}

for ms in data["milestones"]:
    if ms["title"] in existing:
        print(f"  [skip] Milestone exists: {ms['title']} (#{existing[ms['title']]})")
        continue
    subprocess.check_call([
        "gh", "api", "--method", "POST", f"repos/{repo}/milestones",
        "-f", f"title={ms['title']}",
        "-f", f"description={ms['description']}",
    ], stdout=subprocess.DEVNULL)
    print(f"  [created] Milestone: {ms['title']}")
PYEOF

echo "Step 3: Creating issues in dependency order (idempotent, unassigned)..."
"${PYTHON_BIN}" - "${MANIFEST}" "${REPO}" <<'PYEOF'
import json, re, subprocess, sys

manifest_path, repo = sys.argv[1], sys.argv[2]
with open(manifest_path, "r", encoding="utf-8") as f:
    data = json.load(f)

existing_issues_raw = subprocess.check_output(
    ["gh", "issue", "list", "--repo", repo, "--state", "all", "--limit", "200", "--json", "number,title"],
    text=True,
)
existing_by_title = {item["title"]: item["number"] for item in json.loads(existing_issues_raw)}

issues_by_id = {issue["id"]: issue for issue in data["issues"]}
resolved_numbers = {}

# Pre-populate any already-existing issues
for issue in data["issues"]:
    if issue["title"] in existing_by_title:
        resolved_numbers[issue["id"]] = existing_by_title[issue["title"]]

# Topological sort based on dependencies
ordered = []
visited = set()

def visit(issue_id):
    if issue_id in visited:
        return
    visited.add(issue_id)
    for dep_id in issues_by_id[issue_id].get("dependencies", []):
        visit(dep_id)
    ordered.append(issues_by_id[issue_id])

for issue in data["issues"]:
    visit(issue["id"])

for issue in ordered:
    iid = issue["id"]
    title = issue["title"]
    if title in existing_by_title:
        num = existing_by_title[title]
        resolved_numbers[iid] = num
        print(f"  [skip] Issue #{num} already exists: {title}")
        continue

    body = issue["body"]
    # Replace {{DEP_<id>}} with #<actual_github_number>
    def repl(match):
        dep_id = int(match.group(1))
        dep_num = resolved_numbers.get(dep_id)
        return f"#{dep_num}" if dep_num else f"Planned Issue #{dep_id}"

    body = re.sub(r"\{\{DEP_(\d+)\}\}", repl, body)

    cmd = [
        "gh", "issue", "create",
        "--repo", repo,
        "--title", title,
        "--body", body,
        "--milestone", issue["milestone"],
    ]
    for lbl in issue["labels"]:
        cmd.extend(["--label", lbl])

    out = subprocess.check_output(cmd, text=True).strip()
    m = re.search(r"/issues/(\d+)$", out)
    if m:
        num = int(m.group(1))
        resolved_numbers[iid] = num
        existing_by_title[title] = num
        print(f"  [created] Issue #{num}: {title}")
    else:
        print(f"  [created] {out}: {title}")

open_issues_raw = subprocess.check_output(
    ["gh", "issue", "list", "--repo", repo, "--state", "open", "--limit", "200", "--json", "number"],
    text=True,
)
open_count = len(json.loads(open_issues_raw))
print(f"\nDone. Total open issues in {repo}: {open_count} (limit: 40).")
if open_count > 40:
    print("WARNING: Open issue count exceeds 40!", file=sys.stderr)
    sys.exit(1)
PYEOF
