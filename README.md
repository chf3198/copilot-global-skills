# Copilot Global Skills

Canonical source for user-level Copilot skills used across repositories.

## Purpose

This repository stores, versions, and reviews global skills that should not live inside a single product repository.

## Structure

- `skills/` — skill folders (`<skill>/SKILL.md`, references, helpers)
- `.github/` — collaboration governance, templates, workflows
- `scripts/` — local install/sync tooling
- `docs/` — policy references and rollout guides

## Quick Start

1. Clone this repository.
2. Run `scripts/install-local.sh` to sync skills into `~/.copilot/skills`.
3. Restart Copilot/VS Code session if needed.

## Contribution Model

- Open an issue first for net-new skills or major behavior changes.
- Use PRs with evidence and rollback notes.
- Keep skills bounded, auditable, and capability-aware.

## Ticket Governance Standard

Universal ticket naming and handling policy is defined by:

- `skills/github-ticket-governance-standards/SKILL.md`
- `docs/TICKET-GOVERNANCE-STANDARD.md`

Repository enforcement and reporting:

- `.github/workflows/issue-governance.yml`
- `.github/workflows/ticket-governance-metrics.yml`
- `.github/workflows/stale-ticket-hygiene.yml`

## Scope Rules

- Global/user-level skills belong here.
- Project-specific instructions remain in each project repository.
