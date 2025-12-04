-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  hash_profiles

CREATE INDEX IF NOT EXISTS idx_hp_algo_status ON hash_profiles (algo_id, status);
