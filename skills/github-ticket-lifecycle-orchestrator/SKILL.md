---
name: github-ticket-lifecycle-orchestrator
description: Orchestrate end-to-end ticket lifecycle across manager, collaborator, reviewer, and admin roles in GitHub: create/refine, assign, branch, develop, PR, review, merge, and closeout with evidence.
argument-hint: [phase: intake|planning|assignment|execution|pre-pr|review|pre-merge|closeout] [scope: repo|org] [policy-profile: strict|standard|light]
user-invocable: true
disable-model-invocation: false
---

# GitHub Ticket Lifecycle Orchestrator

## Purpose

Provide one bounded operating flow that connects issue management, branching, development execution, review, and merge administration.

## Hard constraints

1. No unbounded loops.
2. Max one lifecycle pass per invocation.
3. If required evidence is missing, return `NO_CHANGE` with missing artifacts.
4. Do not claim merge/closeout success without verification evidence.

## Phase protocol

### `intake`
- Validate issue statement, acceptance criteria, and business impact.
- Apply labels, type, priority, and milestone/iteration.

### `planning`
- Split large work into sub-issues.
- Add dependencies (`blocked by` / `blocking`).
- Ensure project item fields are set (status, priority, iteration, owner).

### `assignment`
- Confirm single responsible owner.
- Confirm due window/iteration and unblocker owner for blockers.

### `execution`
- One branch per ticket concern.
- Link branch in issue Development panel.
- Keep commits atomic and scoped.

### `pre-pr`
- PR links issue(s) with closing keywords where appropriate.
- Test/validation evidence attached.
- Reviewer(s) and CODEOWNERS requested.

### `review`
- Resolve feedback; keep conversation state clean.
- Re-run required checks after substantive changes.

### `pre-merge`
- Required reviews/checks/rulesets all satisfied.
- Merge method follows repo policy.

### `closeout`
- Confirm issue state transition and project status updates.
- Confirm branch deletion and post-merge cleanup.

## Output format (required)

```text
TICKET_LIFECYCLE_REPORT
phase: <intake|planning|assignment|execution|pre-pr|review|pre-merge|closeout>
scope: <repo|org>
policy_profile: <strict|standard|light>

checks:
- id: C1
  result: <pass|fail|partial>
  observation: <what was found>
  expected: <required state>

actions:
1) priority: <P1|P2|P3>
   owner: <role/person>
   change: <specific action>
   verification: <objective pass condition>

decision:
- <apply|defer|NO_CHANGE>

missing_evidence:
- <none or required artifacts>
```
