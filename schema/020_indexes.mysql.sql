-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  hash_profiles

CREATE INDEX idx_hp_algo_status ON hash_profiles (algo_id, status);
