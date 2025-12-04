-- Auto-generated from schema-views-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  hash_profiles

-- Contract view for [hash_profiles]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_hash_profiles AS
SELECT
  id,
  name,
  algo_id,
  output_len,
  params,
  status,
  created_at
FROM hash_profiles;
