# Changelog

All notable changes to SAM are documented here.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres
to [Semantic Versioning](https://semver.org/spec/v2.0.0.html) (ADR-0017). Versions are cut as git tags
on `main`; the first stable release freezes the API and event contracts.

## [Unreleased]

### Added

- Maven multi-module backend reactor with `catalog-service` and `split-service` skeletons, on Java 25 /
  Spring Boot 4 (ADR-0033).
- Angular 21 workspace at `frontend/sam-web`, zoneless and signals-first, with Material (ADR-0034).
- Repository process scaffold: branching model, issue and pull request templates, project board,
  Definition of Ready/Done, and a CI pipeline building both halves on every pull request.