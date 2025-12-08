-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  hash_profiles

CREATE INDEX idx_hp_algo_status ON hash_profiles (algo_id, status);
