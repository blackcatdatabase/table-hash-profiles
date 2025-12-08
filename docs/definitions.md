# hash_profiles

Reusable hashing profiles (algorithm + parameters).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| algo_id | BIGINT | NO |  | Hash algorithm (FK crypto_algorithms.id). |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| name | VARCHAR(120) | NO |  | Profile identifier. |
| output_len | SMALLINT | YES |  | Optional truncated output length in bytes. |
| params | JSONB | YES |  | JSON with algorithm-specific tweaks. |
| status | TEXT | NO | active | Lifecycle flag. (enum: active, deprecated) |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_hash_profiles | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_hp_algo_status | algo_id,status | CREATE INDEX idx_hp_algo_status ON hash_profiles (algo_id, status) |
| uq_hash_profiles | name | CONSTRAINT uq_hash_profiles UNIQUE (name) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_hp_algo | algo_id | crypto_algorithms(id) | ON DELETE RESTRICT |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_hash_profiles | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_hp_algo_status | algo_id,status | CREATE INDEX IF NOT EXISTS idx_hp_algo_status ON hash_profiles (algo_id, status) |
| uq_hash_profiles | name | CONSTRAINT uq_hash_profiles UNIQUE (name) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_hp_algo | algo_id | crypto_algorithms(id) | ON DELETE RESTRICT |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_hash_profiles | mysql | algorithm=MERGE, security=INVOKER | [packages\hash-profiles\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/hash-profiles/schema/040_views.mysql.sql) |
| vw_hash_profiles | postgres |  | [packages\hash-profiles\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/hash-profiles/schema/040_views.postgres.sql) |
