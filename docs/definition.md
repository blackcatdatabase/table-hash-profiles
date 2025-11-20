<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – hash_profiles

Reusable hashing profiles (algorithm + parameters).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| name | VARCHAR(120) | NO | — | Profile identifier. |  |
| algo_id | BIGINT | NO | — | Hash algorithm (FK crypto_algorithms.id). |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |