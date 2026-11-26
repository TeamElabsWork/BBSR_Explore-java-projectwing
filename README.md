# BBSR-explore

> **An intelligent city exploration and personalized recommendation platform for Bhubaneswar, Odisha.**

---

## Table of Contents

1. [Introduction and Problem Statement](#1-introduction-and-problem-statement)
2. [Project Vision and Objectives](#2-project-vision-and-objectives)
3. [Target Audience](#3-target-audience)
4. [Complete Feature Scope](#4-complete-feature-scope)
5. [Technology Stack](#5-technology-stack)
6. [High-Level System Architecture](#6-high-level-system-architecture)
7. [Functional Module Responsibilities](#7-functional-module-responsibilities)
8. [Planned Database Architecture](#8-planned-database-architecture)
9. [Java Recommendation Engine Architecture](#9-java-recommendation-engine-architecture)
10. [AI Chatbot Workflow](#10-ai-chatbot-workflow)
11. [Itinerary Generation Workflow](#11-itinerary-generation-workflow)
12. [Actual Repository Structure](#12-actual-repository-structure)
13. [Current Development Status](#13-current-development-status)
14. [Developer Prerequisites](#14-developer-prerequisites)
15. [Installation and Setup Instructions](#15-installation-and-setup-instructions)
16. [Environment Configuration and Secrets Management](#16-environment-configuration-and-secrets-management)
17. [API Documentation](#17-api-documentation)
18. [Git and GitHub Collaboration Workflow](#18-git-and-github-collaboration-workflow)
19. [Branch Naming and Commit Conventions](#19-branch-naming-and-commit-conventions)
20. [Pull Request and Code Review Guidelines](#20-pull-request-and-code-review-guidelines)
21. [GitHub Issues and Milestone Management](#21-github-issues-and-milestone-management)
22. [Testing Strategy](#22-testing-strategy)
23. [Security and Privacy Considerations](#23-security-and-privacy-considerations)
24. [Deployment Plans](#24-deployment-plans)
25. [Contribution Guidelines](#25-contribution-guidelines)
26. [Troubleshooting and Support](#26-troubleshooting-and-support)
27. [Project Ownership and Licensing](#27-project-ownership-and-licensing)

---

## 1. Introduction and Problem Statement

**BBSR-explore** (formerly *CampusExplore*) is a collaborative web application designed to help people discover and explore places across **Bhubaneswar, Odisha**.

Finding the right place to visit in a growing city is often fragmented across generic map apps, social media posts, and word of mouth. Students, tourists, residents, and working professionals frequently struggle to identify venues that fit their specific **budget, available time, location, mood, interests, and group size**—especially when looking for lesser-known local spots or planning a multi-stop outing.

BBSR-explore addresses this by unifying curated Bhubaneswar venue data, constraint-based discovery, interactive maps, community reviews, a deterministic **Java-based recommendation engine**, an **AI exploration assistant**, and a **Plan My Day / Group Outing Planner** into a single platform.

---

## 2. Project Vision and Objectives

BBSR-explore is an intelligent city exploration and personalized recommendation platform focused on Bhubaneswar, Odisha. It is no longer restricted to college campuses.

The primary objectives of **BBSR-explore** are:

- **Unify city-wide discovery** across Bhubaneswar with a curated, searchable directory organized by category, budget, mood, and amenities.
- **Enable informed comparison** by presenting price ranges, ratings, opening hours, accessibility details, straight-line vs. route distances, and community reviews side by side.
- **Deliver explainable, personalized recommendations** through a Java-based constraint-filtering and weighted-ranking engine.
- **Provide natural-language exploration** via an AI assistant that extracts user constraints and grounds every recommendation in verified database records.
- **Simplify multi-stop outing planning** through a *Plan My Day* and group outing planner that sequences stops, estimates travel time and expenses, and respects opening hours.

---

## 3. Target Audience

BBSR-explore is built for four primary user groups in Bhubaneswar:

- **Students** — Looking for affordable cafés, street food, quiet study spaces, libraries, and weekend hangout spots.
- **Tourists** — Exploring temples, heritage sites, museums, parks, and curated day itineraries.
- **Residents** — Discovering new neighbourhoods, hidden gems, dining options, and recreational venues.
- **Working Professionals** — Finding co-working-friendly cafés, quick lunch spots, evening recreation, and group outing plans.

---

## 4. Complete Feature Scope

> **Note:** All application features listed below are **planned** and have not yet been implemented.

### Supported Venue Categories

- Cafés and restaurants
- Street food outlets
- Parks and gardens
- Temples and heritage sites
- Tourist attractions
- Study spaces and libraries
- Shopping destinations
- Entertainment and recreational venues
- Lesser-known local attractions (*Hidden Gems*)

### Core MVP

- **Place Discovery:** Curated venue listings with pagination, category browsing, and detailed venue pages (prices, hours, amenities, accessibility, images).
- **Advanced Search & Filtering:** Filter by keyword, category, budget, rating, distance, mood, amenities, and opening hours.
- **Trending & Hidden Gems:** Popularity-based discovery alongside lesser-known local destinations.
- **Place Comparison:** Side-by-side comparison of prices, ratings, distances, and facilities.
- **Authentication & User Profiles:** Registration, login, logout, role-based access control, personal preferences, and privacy controls.
- **Community Features:** Reviews and star ratings (CRUD, reporting, validation) and saved favorites.

### Advanced Features

- **Interactive Maps & Routing:** Interactive map view, geolocation or manual starting point, nearby discovery, and multi-stop routing with travel-time estimates (distinguishing straight-line distance from actual route distance).
- **Java Recommendation Engine:** Constraint-based filtering followed by configurable weighted scoring and explainable rankings.
- **AI Exploration Assistant:** Natural-language chatbot integrated via Java backend to extract intent/constraints and surface database-grounded recommendations (with non-AI fallback).
- **Plan My Day & Group Outing Planner:** Multi-stop itinerary generation, stop-order optimization, expense estimation (per-person and total), and saved/shareable itineraries.
- **Administration & Moderation:** Admin dashboard for venue CRUD, category management, data verification, review moderation, basic platform statistics, and audit logging.

### Future Scope (Post-Release Enhancements)

The following enhancements are planned for future iterations and are intentionally excluded from the initial active development backlog:

- Weather-aware recommendations
- Local event discovery
- Multilingual support in English, Hindi, and Odia
- Community-submitted venues
- Collaborative itinerary editing
- Mobile application
- Advanced machine-learning recommendation models

---

## 5. Technology Stack

The following technologies are **planned** for BBSR-explore. No build files or application dependencies have been added to the repository yet.

| Layer | Technology | Intended Role |
|---|---|---|
| Frontend | HTML5, CSS3 | Semantic markup and styling |
| Frontend | Bootstrap 5 | Responsive layout, grid system, and UI components |
| Frontend | JavaScript | Client-side interactivity and REST API integration |
| Backend | Java, Spring Boot | REST API, business logic, application lifecycle |
| Security | Spring Security | Authentication, authorization, and role-based access control |
| ORM | Spring Data JPA, Hibernate | Entity mapping and database persistence |
| Database | MySQL | Relational storage for users, venues, reviews, and itineraries |
| Build Tool | Maven | Dependency management and project builds |
| API Spec | Swagger / OpenAPI | Interactive REST API documentation |
| Maps | Google Maps or Mapbox (TBD) | Interactive maps, geocoding, and routing |
| AI Integration | External LLM API via Java (TBD) | Natural-language constraint extraction for the chatbot |
| Testing | JUnit, Mockito, Postman | Unit, integration, recommendation-engine, and API testing |
| Version Control | Git, GitHub | Source control, issues, pull requests, and project tracking |
| CI/CD | GitHub Actions | Automated build, test, and verification workflows |
| Deployment | To be finalized | Production hosting for frontend, backend, and MySQL |

---

## 6. High-Level System Architecture

The planned architecture follows a layered client-server model where external APIs (Maps and LLM) are mediated by the Spring Boot backend so credentials never reach the browser.

```
Browser / Frontend (HTML5, CSS3, Bootstrap 5, JavaScript)
        │
        │  HTTPS / REST (JSON)
        ▼
Spring Boot REST Controllers (Validation, DTOs, Spring Security, OpenAPI)
        │
        ▼
Service Layer
  ├── Place Discovery & Comparison Service
  ├── User, Auth & Preferences Service
  ├── Reviews, Favorites & Moderation Service
  ├── Java Recommendation Engine (Constraint Filtering + Weighted Ranking)
  ├── AI Exploration Assistant (LLM Constraint Extraction -> Engine -> Grounded Reply)
  └── Itinerary & Expense Planner Service
        │
        ├───────────────────────────────┐
        ▼                               ▼
Repository Layer (Spring Data JPA)    External Integrations (Server-Side)
        │                               ├── Maps & Routing API (Google Maps / Mapbox)
        ▼                               └── External LLM API
MySQL Database
```

---

## 7. Functional Module Responsibilities

The project scope is organized into 12 functional modules:

| Module | Name | Responsibilities |
|---|---|---|
| 1 | **Project Foundation** | Spring Boot/Maven setup, backend coding standards (DTOs, validation, exceptions, OpenAPI), GitHub workflow |
| 2 | **Database & Venue Data** | ER diagram, relational schema, JPA entities, versioned migrations, verified Bhubaneswar venue seed data |
| 3 | **Authentication & User Management** | Registration, login/logout, password hashing, RBAC, user profiles, preferences, privacy controls |
| 4 | **Place Discovery** | Venue listing/details APIs, advanced multi-criteria search/filtering, trending/Hidden Gems, comparison |
| 5 | **Frontend & UI/UX** | Design system, landing/discovery UI, place details/comparison UI, auth/dashboard UI, smart exploration UI |
| 6 | **Maps & Location Services** | Map provider integration, geolocation/manual origin, distance calculation, routing and travel-time estimates |
| 7 | **Community Features** | Reviews and ratings CRUD/reporting, favorites, privacy-conscious recommendation feedback |
| 8 | **Java Recommendation Engine** | Hard constraint filtering, configurable weighted scoring, explainable personalized recommendation API |
| 9 | **AI Exploration Assistant** | Server-side LLM integration, intent/constraint extraction, database-grounded responses, non-AI fallback |
| 10 | **Plan My Day & Group Outing Planner** | Multi-stop itinerary generation, stop ordering, expense estimation, saved/shareable itineraries |
| 11 | **Administration** | Admin dashboard, venue/category CRUD, data verification, review moderation, platform stats, audit logs |
| 12 | **Testing, Security & Deployment** | JUnit/Mockito/API/E2E testing, security hardening, GitHub Actions CI/CD, deployment and final docs |

---

## 8. Planned Database Architecture

The relational schema will be implemented in **MySQL** using Spring Data JPA / Hibernate and versioned SQL migrations. Planned core entities include:

- `users` & `roles` — Account credentials, profile data, and role assignments (`USER`, `ADMIN`).
- `places` & `categories` — Bhubaneswar venues, coordinates, price ranges, opening hours, amenities, accessibility, and category taxonomy.
- `place_images` — Verified venue imagery and attribution metadata.
- `reviews` — User ratings, text reviews, ownership, and moderation/report flags.
- `favorites` — User-saved venues.
- `user_preferences` — Budget tolerance, preferred categories, mood tags, and distance preferences.
- `recommendation_interactions` — Privacy-conscious tracking of accepted/rejected suggestions for feedback.
- `itineraries` & `itinerary_stops` — Multi-stop outings, stop sequence, estimated durations, and expense breakdowns.

---

## 9. Java Recommendation Engine Architecture

The recommendation engine is implemented primarily in **Java business logic** (rather than delegating decisions to an AI model) and operates in two deterministic stages:

1. **Stage 1 — Mandatory Constraint Filtering:**
   Filters out ineligible venues before scoring based on hard constraints: budget ceiling, available time, location/max distance, group size suitability, required categories, opening hours, and mandatory user preferences.
2. **Stage 2 — Normalized Weighted Ranking:**
   Scores eligible venues using normalized criteria and configurable starting weights (to be tuned and validated during development):
   - Personal preference match: **30%**
   - Budget compatibility: **20%**
   - Distance compatibility: **15%**
   - Ratings: **15%**
   - Time compatibility: **10%**
   - Popularity or contextual relevance: **10%**

Missing-data handling ensures venues with incomplete optional attributes are not unfairly penalized, and the API returns human-readable explanations alongside each recommendation.

---

## 10. AI Chatbot Workflow

The AI Exploration Assistant translates natural-language queries into structured recommendations without inventing venue data:

```
User Query (e.g., "I have ₹800, three friends and four hours. Suggest some peaceful places in Bhubaneswar.")
        │
        ▼
1. Intent & Constraint Extraction (Java -> External LLM API)
   Extracts: budget=₹800, groupSize=4, duration=4h, mood=peaceful, city=Bhubaneswar
   (Asks clarifying questions if critical constraints are missing)
        │
        ▼
2. Input Validation & Java Recommendation Engine
   Validates extracted constraints and queries MySQL via the Java engine
        │
        ▼
3. Grounded Response Generation & Validation
   Formats explanations using ONLY verified database venues, prices, ratings,
   distances, and opening hours (falls back to non-AI search if LLM is unavailable)
```

---

## 11. Itinerary Generation Workflow

The **Plan My Day** and **Group Outing Planner** module builds feasible multi-stop outings:

1. **Collect Constraints:** Starting location (geolocation or manual), group size, available time window, budget (per-person or total), preferred activities, and venue opening hours.
2. **Select & Sequence Stops:** Selects compatible venues and orders stops logically to minimize backtracking.
3. **Estimate Travel & Expenses:** Computes route travel times (distinct from straight-line distance), visit durations, and estimated expenses with a clear breakdown—explicitly marking estimated values and unavailable data.
4. **Save & Share:** Allows users to save, edit, visualize on a map, and share itineraries with appropriate access controls.

---

## 12. Actual Repository Structure

The structure below reflects the **actual current state** of the repository. No application source code, Maven files, or SQL migrations exist yet.

```
BBSR_Explore-java-projectwing/
├── README.md              ← Top-level project documentation (this file)
├── CONTRIBUTING.md        ← Collaboration workflow, branch conventions, and PR checklist
├── .editorconfig          ← Editor formatting rules across languages
├── .gitignore             ← Git ignore rules for Java, Maven, IDE, OS, and frontend artifacts
├── docs/
│   └── .gitkeep           ← Placeholder for architecture notes, ER diagrams, and API docs
├── backend/
│   └── README.md          ← Planned Spring Boot backend documentation (no code yet)
├── frontend/
│   └── README.md          ← Planned HTML/CSS/Bootstrap/JS frontend documentation (no code yet)
└── database/
    └── README.md          ← Planned MySQL schema and migration documentation (no schema yet)
```

---

## 13. Current Development Status

| Area | Status |
|---|---|
| Repository configuration (`.gitignore`, `.editorconfig`) | ✅ Initialized |
| Project documentation (`README.md`, `CONTRIBUTING.md`, module READMEs) | ✅ Rebranded to BBSR-explore |
| GitHub backlog, labels, and milestones | 🔄 In planning / setup |
| Backend (Spring Boot, Java, Maven) | ⏳ Not yet implemented |
| Database schema, migrations, and Bhubaneswar seed data | ⏳ Not yet implemented |
| Authentication & authorization (Spring Security) | ⏳ Not yet implemented |
| Frontend (HTML5, CSS3, Bootstrap 5, JS) | ⏳ Not yet implemented |
| Maps & routing integration | ⏳ Not yet implemented |
| Java recommendation engine | ⏳ Not yet implemented |
| AI exploration assistant (LLM integration) | ⏳ Not yet implemented |
| Plan My Day & Group Outing Planner | ⏳ Not yet implemented |
| Admin dashboard & moderation | ⏳ Not yet implemented |
| Automated testing & CI/CD (GitHub Actions) | ⏳ Not yet implemented |
| Production deployment | ⏳ Not yet finalized |

---

## 14. Developer Prerequisites

The following tools will be required once implementation begins:

- **Git** — Version control and collaboration (required now).
- **JDK** — Java Development Kit (exact LTS version to be pinned when Spring Boot is initialized).
- **Maven** — Build and dependency management (or `./mvnw` wrapper once initialized).
- **MySQL Server** & a MySQL client (MySQL Workbench, DBeaver, or CLI).
- **IDE** — IntelliJ IDEA or VS Code with Java Extension Pack.
- **Postman** (or equivalent) — REST API testing.
- **Modern Web Browser** — Chrome, Firefox, or Edge.

---

## 15. Installation and Setup Instructions

### Cloning the Repository

```bash
git clone https://github.com/TeamElabsWork/BBSR_Explore-java-projectwing.git
cd BBSR_Explore-java-projectwing
```

### Build and Run Status

Application build files (`backend/pom.xml`, database migrations, and `frontend/index.html`) have **not been created yet**. Setup and run commands will be documented in `backend/README.md`, `database/README.md`, and `frontend/README.md` as Module 1 and Module 2 issues are completed.

---

## 16. Environment Configuration and Secrets Management

**Never commit credentials, API keys, tokens, or sensitive configuration to this repository.**

- Local configuration files (`.env`, `.env.*`, `application-local.properties`, `application-local.yml`, `application-secrets.*`) are already excluded in `.gitignore`.
- Sensitive credentials (MySQL passwords, JWT/session secrets, Maps API keys, LLM API keys) must be supplied via environment variables or local gitignored files.
- Once backend initialization begins, `.env.example` / `application.properties.example` templates with placeholder keys only will be provided.

---

## 17. API Documentation

REST API endpoints are **not yet implemented**. Once Module 1 (Backend Standards) is completed, interactive API documentation will be exposed via **Swagger / OpenAPI** and documented under `docs/` and `backend/README.md`.

---

## 18. Git and GitHub Collaboration Workflow

1. Pick an unblocked GitHub Issue from the active backlog (do not start untracked work).
2. Sync `main`:
   ```bash
   git switch main
   git pull origin main
   ```
3. Create a feature branch from `main` (never commit directly to `main`).
4. Implement only the issue's agreed scope, write/update tests, and update relevant docs.
5. Push your branch and open a Pull Request targeting `main` with `Closes #<issue-number>`.
6. Address review feedback and merge via PR according to repository branch protection rules.

See [`CONTRIBUTING.md`](./CONTRIBUTING.md) for the complete step-by-step guide.

---

## 19. Branch Naming and Commit Conventions

### Branch Naming

Use `<prefix>/<short-hyphenated-description>`:

- `feature/` — New functionality (e.g., `feature/place-listing-api`)
- `fix/` — Bug fixes (e.g., `fix/review-validation`)
- `docs/` — Documentation changes (e.g., `docs/update-setup-guide`)
- `test/` — Test additions/updates (e.g., `test/recommendation-scoring`)
- `refactor/` — Code restructuring without behavior change (e.g., `refactor/place-service`)

### Commit Messages

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>: <short imperative description>
```

Allowed types: `feat`, `fix`, `docs`, `test`, `refactor`, `chore`, `style`.

---

## 20. Pull Request and Code Review Guidelines

- One pull request per GitHub Issue (`Closes #<issue-number>`).
- Keep diffs focused; resolve merge conflicts before requesting review.
- All relevant tests must pass before review.
- Reviewers verify acceptance criteria, code quality, security (auth, input validation, server-side API keys), and documentation updates.
- See the full **Pull Request Checklist** in [`CONTRIBUTING.md`](./CONTRIBUTING.md#6-pull-request-checklist).

---

## 21. GitHub Issues and Milestone Management

The active development backlog is structured into **12 modules** across **6 milestones** (capped at 35–40 active issues):

1. **M1 — Project Foundation**
2. **M2 — Core Application**
3. **M3 — Location and Community**
4. **M4 — Intelligent Exploration**
5. **M5 — Advanced Features**
6. **M6 — Final Release**

- Every issue uses a module prefix, functional label(s), issue type label, priority label (`priority:P0`, `priority:P1`, `priority:P2`), and milestone.
- Issues are left **unassigned** at creation; the project lead handles task allocation.
- Project Board statuses: **Backlog → Ready → In Progress → In Review → Done**.

---

## 22. Testing Strategy

Testing and security activities run **concurrently with implementation** rather than being deferred to the end:

| Test Type | Scope | Planned Tooling |
|---|---|---|
| Unit Tests | Service logic, constraint filtering, weighted ranking | JUnit, Mockito |
| Repository / DB Tests | JPA mappings, queries, constraints | JUnit + test database |
| API Integration Tests | REST endpoints, validation, auth, error responses | Spring Boot Test / Postman |
| End-to-End & UI Checks | Complete user journeys, chatbot quality, itinerary feasibility, accessibility | Manual & automated checks (TBD) |

---

## 23. Security and Privacy Considerations

- **Authentication & Authorization:** Spring Security with secure password hashing and role-based access control (`USER`, `ADMIN`).
- **Server-Side API Keys:** Maps and LLM API keys remain strictly on the Java backend.
- **Input Sanitization & Rate Limiting:** Protect endpoints against injection, abuse, and excessive external API quota consumption.
- **Privacy-Conscious Tracking:** Recommendation feedback and location permissions respect user consent and privacy controls.
- **Data Licensing:** Bhubaneswar venue data and images must be legitimately sourced and respect third-party licensing terms.

---

## 24. Deployment Plans

Deployment targets for the frontend, Spring Boot backend, and MySQL database are **to be finalized** in Milestone M6. Production and local configurations will remain strictly separated, with automated CI checks configured via GitHub Actions.

---

## 25. Contribution Guidelines

- Work only against a tracked GitHub Issue.
- Never commit secrets or push directly to `main`.
- Keep PRs focused and update documentation alongside code changes.
- Read [`CONTRIBUTING.md`](./CONTRIBUTING.md) in full before opening your first branch.

---

## 26. Troubleshooting and Support

1. Check this `README.md`, [`CONTRIBUTING.md`](./CONTRIBUTING.md), and the relevant directory README (`backend/`, `frontend/`, `database/`).
2. Search existing GitHub Issues to see if the issue is already tracked.
3. Open a new GitHub Issue with reproduction steps, exact error output, and OS/tool versions—never include secrets or API keys.

---

## 27. Project Ownership and Licensing

- **Project:** BBSR-explore
- **Organization:** TeamElabsWork (collaborative student/team initiative; does not represent any external institution or company).
- **License:** **Pending.** No open-source license has been selected or added to this repository yet. A `LICENSE` file will be added once confirmed by the project owners.
