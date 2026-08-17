# SAM — Split-sheet Agreement Manager

> Multi-party split sheet confirmation for independent producers.
> Register a work, propose composition & master splits, collect
> frictionless confirmations, finalize an immutable record, export
> PDF / DistroKid CSV.

Independent musicians routinely agree ownership splits informally, or after money has already started
moving. SAM makes the agreement explicit, evidenced, and immutable *before* the first payment, with an
append-only audit trail of who agreed to what, and when.

## The distinction the whole domain turns on

A **Work** is the composition, the song as written. A **Recording** is a specific master *of* that
Work. One Work, many Recordings.

Every split is scoped to exactly one **rights type**: `COMPOSITION` (attaches to the Work) or `MASTER`
(attaches to the Recording). The same people rarely own the song and the master in the same
proportions, which is precisely why informal agreements go wrong.

## Status

**Increment 0 of 9 - process scaffold.** The build has just started: this repository currently holds a
Maven reactor with two service skeletons and an Angular workspace. Feature work begins at Increment 1.

## Stack

|          |                                                                   |
|----------|-------------------------------------------------------------------|
| Backend  | Java 25 (LTS, Eclipse Temurin), Spring Boot 4, Maven multi-module |
| Frontend | Angular 21, signals-first, zoneless, with Material                |
| Database | PostgreSQL 16, schema per service, row-level security             |
| Events   | Apache Kafka (KRaft), versioned JSON envelope                     |
| Identity | Keycloak (OIDC)                                                   |
| Testing  | JUnit 5 + Testcontainers against real Postgres and Kafka          |

## Quickstart

Requires **JDK 25 (Temurin)** and **Node 22+**.

    git clone https://github.com/davakinyemi/sam.git
    cd sam

    # Backend — reactor build and tests
    cd backend
    ./mvnw verify

    # Frontend — install and build
    cd ../frontend/sam-web
    npm ci
    npx ng build

    # Frontend — dev server on http://localhost:4200
    npx ng serve

There is no `docker compose` stack yet; containerized Postgres, Kafka, and Keycloak arrive in
Increment 1.

## Layout

    backend/            Maven reactor
      catalog-service/    Works and Recordings
      split-service/      The Split aggregate and its workflow
    frontend/
      sam-web/            Owner-facing Angular workspace

One workspace per frontend application, mirroring one directory per backend service — so a directory
here is a thing that builds and deploys on its own.

## License

No license has been chosen yet, which means **all rights reserved**. The source is readable here; it is
not yet licensed for reuse.