#!/usr/bin/env bash
set -e

gunzip -c /home/data_schema.sql.gz | psql clojure

#load data
PGPASSWORD=postgres psql -U postgres -d clojure <<-EOSQL
\copy publicdb.Employee FROM '/home/files/Employee.tsv' HEADER DELIMITER E'\t' CSV;
\copy publicdb.Company FROM '/home/files/Company.tsv' HEADER DELIMITER E'\t' CSV;