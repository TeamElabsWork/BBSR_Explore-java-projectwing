# Backend — BBSR-explore

This directory will contain the **Spring Boot** backend application for **BBSR-explore**.

> **Status: Not yet implemented.** No source code, Maven configuration (`pom.xml`), or Java packages exist here yet. This document describes the planned backend structure.

---

## Planned Technology

| Technology | Role |
|---|---|
| Java | Primary backend language |
| Spring Boot | REST API framework, dependency injection, application lifecycle |
| Spring Security | Authentication, authorization, and role-based access control |
| Spring Data JPA / Hibernate | ORM layer for MySQL persistence |
| MySQL | Relational database |
| Swagger / OpenAPI | Interactive REST API documentation |
| Maven | Build tool and dependency management |
| JUnit & Mockito | Unit, integration, and recommendation-engine testing |

---

## Planned Responsibilities

The backend will be responsible for:

- Exposing versioned REST APIs for place discovery, search, comparison, reviews, favorites, and itineraries.
- Implementing user authentication, RBAC, and profile/preference management via Spring Security.
- Running the **Java-based recommendation engine** (mandatory constraint filtering + configurable weighted ranking).
- Integrating external services (**Maps/Routing API** and **LLM API**) strictly on the server side to protect API keys, enforce timeouts/quotas, and validate outputs.
- Supporting administrative venue management, category management, moderation, and audit logging.

---

## Prerequisites (for when implementation begins)

- **JDK** — LTS version confirmed during Module 1 initialization.
- **Maven** — Or the Maven wrapper (`./mvnw`) generated during project setup.
- **MySQL Server** — Locally running instance for development.

---

## Getting Started (future)

Build, run, and environment configuration instructions will be added here once the Spring Boot project is initialized under Module 1. Do not attempt to build or run the backend yet.

---

## Structure (planned)

```
backend/
├── pom.xml
└── src/
    ├── main/
    │   ├── java/
    │   │   └── com/bbsrexplore/
    │   │       ├── config/
    │   │       ├── controller/
    │   │       ├── dto/
    │   │       ├── exception/
    │   │       ├── model/
    │       │       ├── repository/
    │       │       ├── security/
    │       │       ├── service/
    │       │       └── BbsrExploreApplication.java
    │       └── resources/
    │           ├── application.properties
    │           └── application-local.properties  (gitignored)
    └── test/
        └── java/
            └── com/bbsrexplore/
```

This structure has not been created yet.
