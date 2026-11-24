-- Builds the whole database from zero.
-- Run it from inside the db folder (see scripts/reset-db.sh).
SET DEFINE OFF
SET SQLBLANKLINES ON
SET ECHO ON
SET FEEDBACK ON

@@00_drop_all.sql
@@10_core_tables.sql
@@11_movie_tables.sql
@@12_user_tables.sql
@@13_movie_extra_tables.sql
@@20_seed_basic.sql
@@21_seed_activity.sql