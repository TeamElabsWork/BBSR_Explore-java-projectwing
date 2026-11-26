# Contributing to BBSR-explore

Thank you for contributing to **BBSR-explore**. This document describes the collaboration workflow, branch and commit conventions, and pull request expectations that all contributors must follow.

---

## Table of Contents

1. [Before You Start](#1-before-you-start)
2. [Collaboration Workflow](#2-collaboration-workflow)
3. [Branch Naming Conventions](#3-branch-naming-conventions)
4. [Commit Message Conventions](#4-commit-message-conventions)
5. [Pull Request Guidelines](#5-pull-request-guidelines)
6. [Pull Request Checklist](#6-pull-request-checklist)
7. [Code Review Process](#7-code-review-process)
8. [What Not to Do](#8-what-not-to-do)

---

## 1. Before You Start

- Read the root [`README.md`](./README.md) to understand the project vision, planned architecture, and current development status.
- Work only against a tracked GitHub Issue. Do not start untracked implementation work.
- Task allocation is managed by the project lead—confirm assignment or approval before picking up an issue.
- Ask questions in the Issue thread if any requirement, acceptance criterion, or dependency is unclear.

---

## 2. Collaboration Workflow

Follow these steps for every piece of work — features, fixes, documentation updates, and tests.

### Step 1 — Review the Assigned GitHub Issue

Read the issue Objective, Scope of Work, Acceptance Criteria, Dependencies, and Technical Notes before starting. Ensure prerequisite dependency issues are resolved.

### Step 2 — Synchronize Your Local `main` Branch

Always branch from the latest state of `main`:

```bash
git switch main
git pull origin main
```

### Step 3 — Create a Feature Branch

Create a branch from `main` using the naming conventions in [Section 3](#3-branch-naming-conventions):

```bash
git switch -c feature/short-description
```

### Step 4 — Implement the Agreed Scope

Work only on what is described in the issue. If you discover additional work is needed, discuss it with the project lead rather than expanding the scope of the current branch.

### Step 5 — Test Your Changes

Verify your changes against the acceptance criteria. Ensure all existing tests pass and add new unit/integration tests where applicable.

### Step 6 — Commit with a Meaningful Message

Follow the commit conventions in [Section 4](#4-commit-message-conventions):

```bash
git status
git add <relevant-files>
git commit -m "feat: describe the change"
```

### Step 7 — Push the Feature Branch

```bash
git push -u origin feature/short-description
```

### Step 8 — Open a Pull Request

Open a pull request on GitHub targeting `main`. Explain what changed, why, and how it was tested.

### Step 9 — Link the Related Issue

Reference the issue in the pull request description so it links and closes automatically on merge:

```
Closes #<issue-number>
```

### Step 10 — Address Review Feedback and Merge

Respond to all reviewer comments. Once approved and CI checks pass, merge according to the repository's branch protection rules.

---

## 3. Branch Naming Conventions

Use one of the following prefixes followed by a short, lowercase, hyphenated description:

| Prefix | When to Use |
|---|---|
| `feature/` | Adding new functionality |
| `fix/` | Correcting a bug or broken behavior |
| `docs/` | Documentation-only changes |
| `test/` | Adding or updating tests without changing application logic |
| `refactor/` | Code restructuring without behavior change |

**Examples:**

```
feature/place-listing-api
feature/weighted-recommendation-engine
fix/review-submission-validation
docs/update-development-setup
test/recommendation-service-unit-tests
refactor/itinerary-scoring-helper
```

---

## 4. Commit Message Conventions

Follow the [Conventional Commits](https://www.conventionalcommits.org/) format:

```
<type>: <short imperative description>
```

| Type | When to Use |
|---|---|
| `feat` | A new feature or capability |
| `fix` | A bug fix |
| `docs` | Documentation changes only |
| `test` | Adding or updating tests |
| `refactor` | Code change that is neither a bug fix nor a new feature |
| `chore` | Maintenance tasks, dependency updates, tooling changes |
| `style` | Formatting changes that do not affect logic |

Write commit messages in the **imperative mood** ("add", not "added" or "adding") and keep the subject line under 72 characters.

---

## 5. Pull Request Guidelines

- **One pull request per issue.** Do not bundle unrelated issues into a single PR.
- **Write a clear description.** Explain what changed, why, and how it was verified.
- **Reference the issue.** Include `Closes #<issue-number>`.
- **Keep changes minimal and focused.** Avoid unrelated reformatting or speculative changes.
- **Resolve merge conflicts yourself** before requesting review.
- **Never push directly to `main`.** All changes must go through a branch and reviewed pull request.

---

## 6. Pull Request Checklist

Before marking a pull request as ready for review, confirm:

- [ ] The pull request addresses exactly one GitHub Issue.
- [ ] The pull request links the issue with `Closes #<issue-number>`.
- [ ] The branch is up to date with `main` with all conflicts resolved.
- [ ] All existing and new tests pass.
- [ ] Security and validation requirements are respected.
- [ ] No secrets, credentials, API keys, or local config files are included.
- [ ] No unrelated files or debug code are included.
- [ ] Relevant documentation has been updated.

---

## 7. Code Review Process

- Reviewers check correctness, adherence to acceptance criteria, code quality, security, test coverage, and integration compatibility.
- Authors must address all review comments before merging.
- Mark a conversation as resolved only after the requested change has been made.
- Merge permissions and required approvals follow the repository's branch protection rules.

---

## 8. What Not to Do

- **Do not push directly to `main`.**
- **Do not commit secrets** (see [`README.md`](./README.md#16-environment-configuration-and-secrets-management)).
- **Do not start work without a tracked GitHub Issue.**
- **Do not expand scope mid-branch.**
- **Do not leave debug code or unapproved commented-out blocks** in pull requests.
