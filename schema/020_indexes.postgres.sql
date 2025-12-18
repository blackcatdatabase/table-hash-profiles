-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  hash_profiles

CREATE INDEX IF NOT EXISTS idx_hp_algo_status ON hash_profiles (algo_id, status);
