-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  hash_profiles

ALTER TABLE hash_profiles ADD CONSTRAINT fk_hp_algo FOREIGN KEY (algo_id) REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;
