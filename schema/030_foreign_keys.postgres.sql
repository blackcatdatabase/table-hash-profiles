-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  hash_profiles

ALTER TABLE hash_profiles ADD CONSTRAINT fk_hp_algo FOREIGN KEY (algo_id) REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;
