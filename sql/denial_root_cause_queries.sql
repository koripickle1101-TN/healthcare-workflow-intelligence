-- Denial Root Cause Analysis Queries
-- Dataset: data/synthetic_rcm_workflow_data.csv
-- Created by Kori Pickle

-- 1. Count denials by reason
SELECT
  denial_reason,
  COUNT(*) AS account_count
FROM synthetic_rcm_workflow_data
WHERE claim_status = 'Denied'
GROUP BY denial_reason
ORDER BY account_count DESC;

-- 2. Average days in A/R by denial reason
SELECT
  denial_reason,
  ROUND(AVG(days_in_ar), 1) AS average_days_in_ar
FROM synthetic_rcm_workflow_data
WHERE claim_status = 'Denied'
GROUP BY denial_reason
ORDER BY average_days_in_ar DESC;

-- 3. Denials by payer type
SELECT
  payer_type,
  COUNT(*) AS denied_accounts
FROM synthetic_rcm_workflow_data
WHERE claim_status = 'Denied'
GROUP BY payer_type
ORDER BY denied_accounts DESC;

-- 4. Rework rate by denial reason
SELECT
  denial_reason,
  COUNT(*) AS total_accounts,
  SUM(CASE WHEN rework_required = 'Yes' THEN 1 ELSE 0 END) AS rework_accounts
FROM synthetic_rcm_workflow_data
WHERE denial_reason <> 'None'
GROUP BY denial_reason
ORDER BY rework_accounts DESC;

-- 5. Service lines with highest denial volume
SELECT
  service_line,
  COUNT(*) AS denied_accounts
FROM synthetic_rcm_workflow_data
WHERE claim_status = 'Denied'
GROUP BY service_line
ORDER BY denied_accounts DESC;
