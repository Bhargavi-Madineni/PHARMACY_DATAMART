
-- Use the `ref` function to select from other models

select *
from {{ ref('my_first_dbt_model') }}
where id = 1
SELECT
    title,
    director,
    release_year,
    rating
FROM {{ ref('Mounicatelugu_films') }}
WHERE rating > 8.0;