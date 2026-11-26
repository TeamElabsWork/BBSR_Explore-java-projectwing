# Frontend — BBSR-explore

This directory will contain the **frontend** of **BBSR-explore**.

> **Status: Not yet implemented.** No HTML pages, CSS files, JavaScript files, or assets exist here yet. This document describes the planned frontend structure.

---

## Planned Technology

| Technology | Role |
|---|---|
| HTML5 | Semantic page structure |
| CSS3 | Custom styling and layout |
| Bootstrap 5 | Responsive UI components, grid system, and utilities |
| JavaScript | Client-side interactivity and REST API calls |
| Maps SDK (TBD) | Interactive maps and routing display (Google Maps or Mapbox) |

---

## Planned Responsibilities

The frontend will be responsible for:

- Rendering the landing page, Bhubaneswar venue discovery cards, search, and multi-criteria filters.
- Displaying venue detail pages (images, reviews, ratings, directions) and side-by-side place comparisons.
- Providing user registration, login, profile, preference settings, and favorites dashboards.
- Rendering smart exploration interfaces: personalized recommendation results, AI exploration assistant chatbot, and the Plan My Day / Group Outing itinerary planner (with loading, empty, and error states).
- Providing administrative venue management and moderation interfaces.
- Communicating with the Spring Boot backend over REST APIs.

---

## Prerequisites (for when implementation begins)

The initial frontend is planned using **HTML5, CSS3, Bootstrap 5, and JavaScript** — no Node.js build pipeline is required initially. If a bundler is introduced later, Node.js requirements will be documented here.

---

## Getting Started (future)

Local serving instructions will be added once `index.html` and core UI components are created under Module 5.

---

## Structure (planned)

```
frontend/
├── index.html
├── css/
│   └── style.css
├── js/
│   └── main.js
└── assets/
    └── (images and static resources)
```

This structure has not been created yet.
