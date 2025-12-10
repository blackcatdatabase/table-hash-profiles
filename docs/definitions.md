# hash_profiles

Reusable hashing profiles (algorithm + parameters).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| name | VARCHAR(120) | NO |  | Profile identifier. |
| algo_id | BIGINT | NO |  | Hash algorithm (FK crypto_algorithms.id). |
| output_len | SMALLINT | YES |  | Optional truncated output length in bytes. |
| params | mysql: JSON / postgres: JSONB | YES |  | JSON with algorithm-specific tweaks. |
| status | mysql: ENUM('active','deprecated') / postgres: TEXT | NO | active | Lifecycle flag. (enum: active, deprecated) |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |

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
| vw_hash_profiles | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_hash_profiles | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
