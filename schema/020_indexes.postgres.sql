-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  hash_profiles
CREATE INDEX IF NOT EXISTS idx_hp_algo_status ON hash_profiles (algo_id, status);
