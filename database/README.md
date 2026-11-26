# Database — BBSR-explore

This directory will contain **SQL schema migrations, seed data, and database documentation** for **BBSR-explore**.

> **Status: Not yet implemented.** No schema files, migration scripts, or seed data exist here yet. This document describes the planned database setup.

---

## Planned Technology

| Technology | Role |
|---|---|
| MySQL | Primary relational database for all application data |
| Spring Data JPA / Hibernate | ORM layer mapping Java entities to MySQL tables |
| Versioned Migrations (e.g., Flyway or Liquibase) | Reproducible schema versioning (tool to be finalized in Module 2) |

---

## Planned Data Model (high-level)

The following core entities are planned for Bhubaneswar city exploration, recommendations, and itineraries:

| Entity | Description |
|---|---|
| `User` | Registered users (students, tourists, residents, professionals, admins) |
| `Role` | Access control roles (`USER`, `ADMIN`) |
| `Place` | Bhubaneswar venues, coordinates, price ranges, opening hours, amenities, accessibility |
| `Category` | Venue categories (cafés, street food, parks, temples/heritage, study spaces, etc.) |
| `PlaceImage` | Venue images and licensing/attribution metadata |
| `Review` | User-submitted reviews, star ratings, and moderation flags |
| `Favorite` | User-saved places |
| `UserPreference` | Budget, distance, mood, and category preferences per user |
| `RecommendationInteraction` | Privacy-conscious tracking of accepted/rejected recommendations |
| `Itinerary` | Saved or shared multi-stop outing plans |
| `ItineraryStop` | Ordered stops within an itinerary with durations and estimated expenses |

---

## Prerequisites (for when implementation begins)

- **MySQL Server** — A locally running instance.
- **A MySQL client** — MySQL Workbench, DBeaver, or the `mysql` CLI.
- Local database credentials configured via gitignored environment/properties files.

---

## Getting Started (future)

Schema creation, migration execution, and Bhubaneswar venue seed instructions will be added here once Module 2 is implemented.

---

## Structure (planned)

```
database/
├── migrations/     ← Versioned SQL schema migration scripts
└── seeds/          ← Verified Bhubaneswar venue development seed data
```

This structure has not been created yet.
