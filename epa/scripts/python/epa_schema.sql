create table frs_naics_codes
(
	index bigint,
	pgm_sys_id text,
	pgm_sys_acnrm text,
	naics_code text,
	registry_id text
);


create index ix_epa_frs_naics_codes_index
	on frs_naics_codes (index);

create table icis_air_programs
(
	index bigint,
	pgm_sys_id text,
	program_code text,
	program_desc text,
	air_operating_status_code text,
	air_operating_status_desc text,
	begin_date text,
	updated_date text
);


create index ix_epa_icis_air_programs_index
	on icis_air_programs (index);

create table icis_air_informal_actions
(
	index bigint,
	pgm_sys_id text,
	activity_id bigint,
	enf_identifier text,
	activity_type_code text,
	activity_type_desc text,
	state_epa_flag text,
	enf_type_code text,
	enf_type_desc text,
	achieved_date text,
	official_flg text
);


create index ix_epa_icis_air_informal_actions_index
	on icis_air_informal_actions (index);

create table icis_air_facilities
(
	index bigint,
	pgm_sys_id text,
	registry_id text,
	facility_name text,
	street_address text,
	city text,
	county_name text,
	state text,
	zip_code text,
	epa_region bigint,
	sic_codes text,
	naics_codes text,
	facility_type_code text,
	air_pollutant_class_code text,
	air_pollutant_class_desc text,
	air_operating_status_code text,
	air_operating_status_desc text,
	current_hpv text,
	local_control_region_code text,
	local_control_region_name text
);


create index ix_epa_icis_air_facilities_index
	on icis_air_facilities (index);

create table poll_rpt_combined_emissions
(
	index bigint,
	reporting_year bigint,
	registry_id text,
	pgm_sys_acrnm text,
	pgm_sys_id text,
	pollutant_name text,
	annual_emission double precision,
	unit_of_measure text,
	nei_type text,
	nei_hap_voc_flag text
);


create index ix_epa_poll_rpt_combined_emissions_index
	on poll_rpt_combined_emissions (index);

create table frs_program_links
(
	index bigint,
	pgm_sys_acrnm text,
	pgm_sys_id text,
	registry_id text,
	primary_name text,
	location_address text,
	supplemental_location text,
	city_name text,
	county_name text,
	fips_code text,
	state_code text,
	state_name text,
	country_name text,
	postal_code text
);


create index ix_epa_frs_program_links_index
	on frs_program_links (index);

create table frs_sic_codes
(
	index bigint,
	pgm_sys_id text,
	pgm_sys_acnrm text,
	sic_code bigint,
	registry_id text
);


create index ix_epa_frs_sic_codes_index
	on frs_sic_codes (index);

create table icis_air_fces_pces
(
	index bigint,
	pgm_sys_id text,
	activity_id bigint,
	state_epa_flag text,
	activity_type_code text,
	activity_type_desc text,
	comp_monitor_type_code text,
	comp_monitor_type_desc text,
	actual_end_date text,
	program_codes text
);


create index ix_epa_icis_air_fces_pces_index
	on icis_air_fces_pces (index);

create table icis_air_stack_tests
(
	index bigint,
	pgm_sys_id text,
	activity_id bigint,
	comp_monitor_type_code text,
	comp_monitor_type_desc text,
	state_epa_flag text,
	actual_end_date text,
	pollutant_codes text,
	pollutant_descs double precision,
	air_stack_test_status_code text,
	air_stack_test_status_desc text
);


create index ix_epa_icis_air_stack_tests_index
	on icis_air_stack_tests (index);

create table icis_air_pollutants
(
	index bigint,
	pgm_sys_id text,
	pollutant_code bigint,
	pollutant_desc text,
	srs_id text,
	chemical_abstract_service_nmbr double precision,
	air_pollutant_class_code text,
	air_pollutant_class_desc text
);


create index ix_epa_icis_air_pollutants_index
	on icis_air_pollutants (index);

create table icis_air_titlev_certs
(
	index bigint,
	pgm_sys_id text,
	activity_id bigint,
	comp_monitor_type_code text,
	comp_monitor_type_desc text,
	state_epa_flag text,
	actual_end_date text,
	facility_rpt_deviation_flag text
);


create index ix_epa_icis_air_titlev_certs_index
	on icis_air_titlev_certs (index);

create table icis_air_formal_actions
(
	index bigint,
	pgm_sys_id text,
	activity_id bigint,
	enf_identifier text,
	activity_type_code text,
	activity_type_desc text,
	state_epa_flag text,
	enf_type_code text,
	enf_type_desc text,
	settlement_entered_date text,
	penalty_amount double precision
);


create index ix_epa_icis_air_formal_actions_index
	on icis_air_formal_actions (index);

create table icis_air_program_subparts
(
	index bigint,
	pgm_sys_id text,
	program_code text,
	program_desc text,
	air_program_subpart_code text,
	air_program_subpart_desc text
);


create index ix_epa_icis_air_program_subparts_index
	on icis_air_program_subparts (index);

create table echo_demographics
(
	index bigint,
	registry_id text,
	radius_of_area bigint,
	total_area bigint,
	land_area bigint,
	water_area bigint,
	acs_population bigint,
	acs_ipovbas bigint,
	lowincome bigint,
	minority_population bigint,
	households bigint,
	households_public_assistance bigint,
	persons_below_poverty_level bigint,
	education_basis bigint,
	less_than_9th_grade_population bigint,
	grades_9_12_population bigint,
	high_school_diploma_population bigint,
	some_college_population bigint,
	bs_ba_or_more_population bigint,
	income_less_15k_hshlds bigint,
	income_15k_25k_hshlds bigint,
	income_25k_50k_hshlds bigint,
	income_50k_75k_hshlds bigint,
	income_greater_75k_hshlds bigint,
	housing_units double precision,
	population_density double precision,
	white_population double precision,
	african_american_population double precision,
	hispanic_origin_population double precision,
	asian_pacific_islander_pop double precision,
	american_indian_population double precision,
	other_multiracial_populaiton double precision,
	child_5_0_population double precision,
	minors_17_0_population double precision,
	adults_18_plus_population double precision,
	seniors_65_plus_population double precision
);


create index ix_epa_echo_demographics_index
	on echo_demographics (index);

