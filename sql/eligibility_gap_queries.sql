-- Eligibility Verification Gap Analysis Queries
-- Dataset: data/synthetic_rcm_workflow_data.csv
-- Created by Kori Pickle

-- 1. Eligibility-related denials
SELECT
  eligibility_status,
  denial_reason,
  COUNT(*) AS account_count
FROM synthetic_rcm_workflow_data
WHERE denial_reason LIKE '%Eligibility%'
GROUP BY eligibility_status, denial_reason
ORDER BY account_count DESC;

-- 2. Average days in A/R by eligibility status
SELECT
  eligibility_status,
  ROUND(AVG(days_in_ar), 1) AS average_days_in_ar
FROM synthetic_rcm_workflow_data
GROUP BY eligibility_status
ORDER BY average_days_in_ar DESC;

-- 3. Inactive eligibility accounts
SELECT
  account_id,
  service_line,
  payer_type,
  eligibility_status,
  claim_status,
  denial_reason,
  days_in_ar,
  patient_impact
FROM synthetic_rcm_workflow_data
WHERE eligibility_status = 'Inactive'
ORDER BY days_in_ar DESC;

-- 4. Eligibility risk by payer type
SELECT
  payer_type,
  COUNT(*) AS inactive_eligibility_accounts
FROM synthetic_rcm_workflow_data
WHERE eligibility_status = 'Inactive'
GROUP BY payer_type
ORDER BY inactive_eligibility_accounts DESC;
