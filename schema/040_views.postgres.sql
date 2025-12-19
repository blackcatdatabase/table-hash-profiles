-- Auto-generated from schema-views-postgres.yaml (map@sha1:5C6FE96DC2067A978A357A1DCB8631B46C71D429)
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
