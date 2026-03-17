# Universal Ticket Governance Standard

## Title convention

Use one prefix and one concise outcome summary:

- `epic: <outcome>`
- `research: <question>`
- `task: <deliverable>`
- `bug: <symptom or regression>`
- `skill-change: <skill + change>`

## Required labels

Every issue must include:

- one `type:*`
- one `priority:*`
- one or more `area:*`

## Required ticket sections

- problem statement
- expected outcome / acceptance criteria
- scope boundaries
- verification method

## Lifecycle expectations

1. Intake complete before assignment.
2. One accountable owner assigned.
3. Branch/PR linkage during execution.
4. Closeout includes verification evidence.

## Rollout status

- Phase 1: New policy owner skill: complete.
- Phase 2: Ownership de-overlap across skills: complete.
- Phase 3: Router wiring and capability-first invocation: complete.
- Phase 4: Issue forms/workflows enforcement: complete.
- Phase 5: Compliance metrics workflow: complete.
- Phase 6: Pilot-and-promote rollout checklist: complete (below).

## Pilot-and-promote checklist

### Pilot

- Select 2 repositories (one high-change, one stable).
- Enable issue forms and disable blank issues.
- Enable issue-governance + metrics workflows.
- Run for 2 weeks and review compliance trends.

### Promote

- Publish final taxonomy and naming policy at org/account `.github` defaults.
- Apply baseline labels to all active repositories.
- Enable stale hygiene with exemption policy.
- Review exceptions monthly and update policy profile (`strict|standard|light`).
