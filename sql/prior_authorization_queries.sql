-- Prior Authorization Workflow Analysis Queries
-- Dataset: data/synthetic_rcm_workflow_data.csv
-- Created by Kori Pickle

-- 1. Authorization-related denials
SELECT
  authorization_status,
  denial_reason,
  COUNT(*) AS account_count
FROM synthetic_rcm_workflow_data
WHERE denial_reason LIKE '%Authorization%'
GROUP BY authorization_status, denial_reason
ORDER BY account_count DESC;

-- 2. Average days in A/R by authorization status
SELECT
  authorization_status,
  ROUND(AVG(days_in_ar), 1) AS average_days_in_ar
FROM synthetic_rcm_workflow_data
WHERE authorization_required = 'Yes'
GROUP BY authorization_status
ORDER BY average_days_in_ar DESC;

-- 3. Authorization status by service line
SELECT
  service_line,
  authorization_status,
  COUNT(*) AS account_count
FROM synthetic_rcm_workflow_data
WHERE authorization_required = 'Yes'
GROUP BY service_line, authorization_status
ORDER BY service_line, account_count DESC;

-- 4. Accounts at risk because authorization is missing or pending
SELECT
  account_id,
  service_line,
  payer_type,
  authorization_status,
  claim_status,
  days_in_ar,
  patient_impact
FROM synthetic_rcm_workflow_data
WHERE authorization_required = 'Yes'
  AND authorization_status IN ('Missing', 'Pending')
ORDER BY days_in_ar DESC;
