## What and why

<!-- One paragraph. What changes, and what it makes possible. -->

## Requirement trace

<!-- SRS IDs this delivers or verifies, comma-separated. ACC-02. -->
Refs:

Closes #

## Checklist

- [ ] Commits follow Conventional Commits and carry requirement IDs in the body (NFR-MAIN-01)
- [ ] Tests added or updated, and their names carry the requirement ID (NFR-MAIN-02, ACC-01)
- [ ] `./mvnw verify` passes locally
- [ ] A significant decision here is recorded as an ADR, or there was none (NFR-MAIN-01)
- [ ] No secrets, tokens, or personal data in code, logs, URLs, or fixtures (NFR-SEC-05)
- [ ] Percentages, if touched, are `BigDecimal` in code and strings on the wire (FR-SPLIT-02, DATA-06)
- [ ] Schema changes, if any, are Flyway migrations - no JPA schema generation (CON-02, DATA-01)
- [ ] Reproducible from a clean checkout (NFR-MAIN-04)

## Verification

<!-- How a reviewer confirms this works. Command, test name, or demonstration steps. -->