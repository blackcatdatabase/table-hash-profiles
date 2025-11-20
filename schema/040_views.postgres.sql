-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  hash_profiles
-- Contract view for [hash_profiles]
CREATE OR REPLACE VIEW vw_hash_profiles AS
SELECT
  id,
  name,
  algo_id,
  output_len,
  params,
  status,
  created_at
FROM hash_profiles;
