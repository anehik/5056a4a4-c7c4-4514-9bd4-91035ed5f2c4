/*
 Instructions:
    - Create a branch named "wine"
    - Solve the data-requests from this file using SQL.
    - Add/Commit/Push your changes to github (individual).
 Note: You can work along with your project team.
 */

-- EX.1) Get the top 10 countries with more population density
SELECT name FROM country where area_km2 = 0;
SELECT
    name,
    Div(population, area_km2) AS "density"
FROM
    country
where
    area_km2 > 0
order by density desc
limit 10
;

-- EX.2) Get the count of male/female tasters.

SELECT distinct gender from taster;
--distinct son todos los valores unicos
select
    gender,
    count(*)
from
    taster
where
      --lower(gender) in ('male','female')
    --lower(gender) NOT LIKE 'undef%'
    lower(gender) LIKE '%male'
group by
    gender
;


-- EX.3) Get the percentage of male/female tasters.
with taster_valid AS (
    SELECT
        *
    from
        taster
    where
        lower(gender) IN ('male','female')
), taster_gender_agg AS (
    select gender,
           count(*) :: numeric(7, 2) gender_sum
    from taster_valid
    group by
             gender
), taster_total AS (
    select

select
    *
from
    taster_gender_agg

)

-- EX.4) How many countries share the same first digit on their country-code?
-- Show only those digits with more than 20 countries.
select left(code,1) from country;

(select
    left(code,1) first_digit,
    count(*) country count
from
    country
group by

-- EX.5) Get the % of countries are not labeled as a trillion usd gdp and
-- do have a null happiness_score.
select * from country;

-- COUNTRY ANALYSIS

-- A) Get the average happiness_score of the countries labeled with a GDP
-- of "billion" and "trillion".


-- B) Show a table with the country name, population, area, gdp, and happiness core of the
-- the G7 countries (i.e., `Canada`, `France`, `Germany`, `Italy`, `Japan`, `United Kingdom`, `United States`)
-- order by happiness_score (DESC).


-- C) Create a custom score called "score" using this formula: happiness_score * density
-- Where `density` is population / area_km2. Show the top 10 countries (name) with greater score.


-- WINE ANALYSIS

-- D) Get the number of wines per variety, ordered by the latter (desc)


-- E) How many wines are registered per country? Show country name and number of wines, ordered by the latter (desc).


-- REVIEW ANALYSIS

-- F) What's the average wine price and points per province?
-- Show the province, avg-price, avg-points when the avg-points are grater than 85.
-- Ordered by avg-price and then by avg-points.


-- G) What's the average wine price and points of the countries with more than a 7 in their happiness score?
-- Show the country, avg-price, avg-points.
-- Ordered by avg-points and then by avg-price.


-- H) What's the min, avg, and max wine points per taster gender (excluding undefined) and wine variety starting with "Cabernet".
-- Order by: variety, gender


-- I) Create the following custom score called "wine_quality_and_happiness_index": happiness_score * avg(points) / 100
-- Get the score per country and order by the value (desc).

