-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  hash_profiles

CREATE INDEX idx_hp_algo_status ON hash_profiles (algo_id, status);
