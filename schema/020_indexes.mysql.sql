-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  hash_profiles

CREATE INDEX idx_hp_algo_status ON hash_profiles (algo_id, status);
