-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  hash_profiles

ALTER TABLE hash_profiles ADD CONSTRAINT fk_hp_algo FOREIGN KEY (algo_id) REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;
