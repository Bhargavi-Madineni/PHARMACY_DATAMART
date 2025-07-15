/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/
{{ config(materialized="table") }}

-- SELECT
-- title,
-- director,
-- release_year,
-- rating
-- from {{ source('pdw_etl', 'MOUNICATELUGU_FILMS') }}
-- WHERE rating > 8.0;
select title, director, release_year, rating
from {{ source("pdw_etl", "MOUNICATELUGU_FILMS") }}
where rating > 9.0
