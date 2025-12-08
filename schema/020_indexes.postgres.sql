-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  hash_profiles

CREATE INDEX IF NOT EXISTS idx_hp_algo_status ON hash_profiles (algo_id, status);
