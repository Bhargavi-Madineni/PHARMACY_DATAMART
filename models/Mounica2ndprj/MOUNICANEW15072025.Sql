{{ config(materialized="table") }}

CREATE OR REPLACE TABLE raw.customers (
  id INT,
  full_name STRING,
  email STRING
);
