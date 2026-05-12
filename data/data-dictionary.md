# Data Dictionary

## Dataset

File: `data/synthetic_rcm_workflow_data.csv`

This is a fictional synthetic dataset created for student portfolio, workflow analysis, SQL practice, dashboard planning, and revenue cycle operations learning.

No protected health information is used.

## Fields

| Field | Meaning | Example |
|---|---|---|
| account_id | Fictional account identifier | A1001 |
| service_line | Department or care area | Cardiology |
| payer_type | Payer category | Commercial |
| authorization_required | Whether authorization is required | Yes |
| authorization_status | Authorization status at time of workflow review | Approved |
| eligibility_status | Coverage verification status | Verified |
| documentation_complete | Whether documentation appears complete | Yes |
| claim_status | Current claim status | Paid |
| denial_reason | Denial or pending reason | Authorization not obtained |
| days_in_ar | Number of days in accounts receivable | 46 |
| rework_required | Whether staff rework is needed | Yes |
| patient_impact | Patient-facing effect of the workflow issue | Appointment delay |

## Intended Analysis Questions

- Which denial reasons appear most often?
- Which payer types are associated with longer days in A/R?
- How often do authorization gaps create denials?
- How often do eligibility issues create downstream claim problems?
- Does incomplete documentation increase rework?
- Which service lines show the highest workflow risk?

## Portfolio Use

Use this dataset to support:

- SQL query examples
- Google Sheets dashboards
- Power BI mockups
- LinkedIn carousel content
- Revenue cycle case studies
- Workflow improvement recommendations

## Created By

Kori Pickle
