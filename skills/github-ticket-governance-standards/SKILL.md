---
name: github-ticket-governance-standards
description: Define and enforce universal GitHub ticket naming, intake quality, lifecycle states, closure evidence, and aging/escalation policy across repositories.
argument-hint: [mode: design|audit|apply|enforce] [scope: repo|org] [policy-profile: strict|standard|light]
user-invocable: true
disable-model-invocation: false
---

# GitHub Ticket Governance Standards

## Purpose

Provide one canonical contract for ticket naming and handling quality across repositories.

## Ownership boundary

This skill is the **policy owner** for ticket governance standards.

- Owns: title schema, required issue sections, required labels, state policy, closeout evidence, aging/escalation policy.
- Does not own: implementation branch/PR execution (`github-ticket-lifecycle-orchestrator`) or Projects hierarchy/automation operations (`github-projects-agile-linkage`).

## Baseline contract

### 1) Title naming schema

Required title prefixes:

- `epic: <outcome>`
- `research: <question>`
- `task: <deliverable>`
- `bug: <symptom or regression>`

Rules:
- Lowercase prefix + colon.
- Outcome-oriented phrase after prefix.
- No vague placeholders (`misc`, `stuff`, `todo`).

### 2) Required intake data

Every ticket must include:

- problem statement
- expected outcome / acceptance criteria
- scope boundaries
- verification method

### 3) Required labels

Each issue must have:

- exactly one `type:*` label
- exactly one `priority:*` label
- at least one `area:*` label

### 4) Lifecycle state rules

- Intake complete before assignment.
- Assignment must identify one accountable owner.
- Work-in-progress must include linkage to branch/PR when code work starts.
- Closeout must include closure reason + verification evidence.

### 5) Aging/escalation policy

- P1 tickets: escalate if no owner within 1 business day.
- P2 tickets: escalate if no owner within 3 business days.
- P3 tickets: escalate if no owner within 5 business days.
- Stale automation must exempt `type: epic` and active milestone issues.

## Capability-aware policy

If org-level issue types/fields are unavailable, use label-backed fallback:

- issue type via `type:*` labels
- priority/effort/date via labels + project fields where available

Always return explicit fallback and enforcement guidance.

## Output format (required)

```text
TICKET_GOVERNANCE_REPORT
mode: <design|audit|apply|enforce>
scope: <repo|org>
policy_profile: <strict|standard|light>

contract:
- title_schema: <pass|fail|partial>
- required_fields: <pass|fail|partial>
- labels: <pass|fail|partial>
- lifecycle_policy: <pass|fail|partial>
- closure_evidence: <pass|fail|partial>
- aging_escalation: <pass|fail|partial>

actions:
1) priority: <P1|P2|P3>
   owner: <role|team>
   change: <specific control>
   verification: <objective pass condition>

decision:
- <apply|defer|NO_CHANGE>

missing_evidence:
- <none or required artifacts>
```
