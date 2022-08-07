// Just get things rolling
SELECT
    count(*) as n
FROM epa.frs_facilities;

// Most common pollutants?
SELECT
  pollutant_name
, count(*) AS n
FROM epa.poll_rpt_combined_emissions
GROUP BY pollutant_name
ORDER BY 2 DESC;

// Be more precise, collect around registry id, so
// which pollutant is at the most facilities.
SELECT
  pollutant_name
, count(distinct registry_id) AS n_facs
FROM epa.poll_rpt_combined_emissions
GROUP BY pollutant_name
ORDER BY 2 DESC;

// Now, some demographics
SELECT
    p.pollutant_name
,   count(distinct d.registry_id) AS n_facs
,   min(d.white_population) AS white_pop_min
,   avg(d.white_population) AS white_pop_avg
,   max(d.white_population) AS white_pop_max
FROM epa.echo_demographics d
INNER JOIN (
     SELECT pollutant_name, registry_id
    FROM epa.poll_rpt_combined_emissions
    GROUP BY 1, 2
         ) AS p
    ON d.registry_id = p.registry_id
GROUP BY
    p.pollutant_name
ORDER BY 2 DESC;

// See the trend in general reporting
SELECT
  reporting_year
, pollutant_name
, sum(annual_emission) as annual_emission
, count(*) as n_reports
FROM epa.poll_rpt_combined_emissions p
GROUP BY p.reporting_year, pollutant_name
ORDER BY 1, 2;

// Who are the most diverse polluters?
SELECT
    registry_id
,   count(distinct pollutant_name) AS n_pollutants
FROM epa.poll_rpt_combined_emissions p
GROUP BY 1
ORDER BY 2 DESC;
