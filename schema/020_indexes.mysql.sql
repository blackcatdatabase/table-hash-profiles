-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  hash_profiles

CREATE INDEX idx_hp_algo_status ON hash_profiles (algo_id, status);
