# Definition of Ready / Definition of Done

These define what the `Ready` and `Done` columns on the SAM project board mean. A card that does not
meet the criteria does not belong in the column, regardless of how much work has been finished.

## Definition of Ready

An issue may move from `Backlog` to `Ready` when all of the following are true.

- [ ] It states an **outcome**, not a list of activities.
- [ ] It carries a **requirement trace** - at least one SRS ID (`FR-`, `NFR-`, `INT-`, `DATA-`, `CON-`)
  or, for engineering work, the ADR or constraint it serves. ACC-02.
- [ ] It names its **verification** - the test, review, or demonstration that will accept it. A
  requirement is accepted only when that verification passes. ACC-01.
- [ ] It is assigned to an **increment milestone**.
- [ ] It carries a **priority** of `M`, `S`, or `C`, so that CTX-07's trim order is already known.
- [ ] It is small enough to finish in one sitting, or it is split.
- [ ] Any decision it depends on is **already made** - recorded as an ADR or a CTX entry. Work that
  needs an undecided thing is not ready; the decision is the prior task.

## Definition of Done

An issue may move to `Done` when all of the following are true.

- [ ] The named **verification passes**, and it lives in the repository as a test or a documented
  demonstration - not as a memory of having checked.
- [ ] Changes reached `main` through a **squash-merged pull request** with the branch deleted. ADR-0006.
- [ ] Commit messages follow **Conventional Commits** and carry the requirement IDs in the body.
- [ ] Any significant decision taken along the way is **recorded as an ADR**. NFR-MAIN-01.
- [ ] The **traceability matrix** (SRS Appendix D) has the row for this requirement filled.
- [ ] It is still **reproducible from a clean checkout**. NFR-MAIN-04.
- [ ] No secrets, tokens, or personal data entered the repository, the logs, or the event payloads.
  NFR-SEC-05.

## Work in progress

The `In Progress` column holds **one** card. That is CTX-04, and it is the reason the board exists
rather than a list: the limit is only real if exceeding it is visible.