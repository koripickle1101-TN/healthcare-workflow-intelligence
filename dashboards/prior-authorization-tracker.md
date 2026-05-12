# Prior Authorization Tracker Specification

## Purpose

This tracker gives visibility into authorization status, ownership, timing, payer response, and escalation risk before services are delayed or claims are denied.

## Recommended Fields

| Field | Purpose |
|---|---|
| Account ID | Fictional account tracking ID |
| Service Line | Identifies operational area |
| Payer Type | Shows payer category |
| Authorization Required | Confirms whether auth is needed |
| Authorization Status | Approved, pending, missing, denied |
| Owner | Staff role responsible for next step |
| Due Date | When authorization must be completed |
| Payer Response | Latest payer update |
| Escalation Needed | Yes or no |
| Patient Impact | Scheduling or billing impact |

## Risk Categories

- Green: authorization approved
- Yellow: authorization pending
- Orange: authorization missing
- Red: authorization denied or service at risk

## Dashboard Questions

- Which accounts are at risk before service?
- Which payer types are causing the longest authorization delays?
- Which service lines have the highest authorization burden?
- Which accounts need escalation today?

## Portfolio Insight

Prior authorization visibility protects scheduling, reimbursement, staff capacity, and patient trust.

## Created By

Kori Pickle
