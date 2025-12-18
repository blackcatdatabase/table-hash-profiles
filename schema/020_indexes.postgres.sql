-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  hash_profiles

CREATE INDEX IF NOT EXISTS idx_hp_algo_status ON hash_profiles (algo_id, status);
