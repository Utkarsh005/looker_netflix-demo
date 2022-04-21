# Define the database connection to be used for this model.
connection: "demo_atlan_snowflake"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: all_assets_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: all_assets_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "All Assets"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: applicable_roles {}

explore: atlan_temp_table_instacart_order_products_users_time_master {}

explore: atlan_temp_table_netflix_watch_delay_by_months {}

explore: columns {}

explore: covid_county_level_pivot {}

explore: covid_county_level_stats_infra_details {}

explore: covid_data {}

explore: covid_state_level_analytics {}

explore: covid_state_level_demographics_agg {}

explore: covid_state_level_health_stats_agg {}

explore: covid_state_level_stats_agg {}

explore: customer_orders {}

explore: customer_payments {}

explore: databases {}

explore: dim_customers {}

explore: enabled_roles {}

explore: external_tables {}

explore: fct_orders {}

explore: file_formats {}

explore: functions {}

explore: information_schema_catalog_name {}

explore: instacart_ad_spend_by_user {}

explore: instacart_aisles {}

explore: instacart_alcohol_order_customer {}

explore: instacart_alcohol_order_time {}

explore: instacart_all_order_products_user {}

explore: instacart_bakery_order_customer {}

explore: instacart_bakery_order_time {}

explore: instacart_beverages_order_analysis {}

explore: instacart_beverages_order_customer {}

explore: instacart_beverages_order_time {}

explore: instacart_customer_details {}

explore: instacart_departments {}

explore: instacart_mkt_spend_by_user {}

explore: instacart_nonactive_beverage_users {}

explore: instacart_nonactive_beverage_users_orders {}

explore: public_instacart_orders {}

explore: instacart_order_products {}

explore: public_instacart_order_products_master {}

explore: instacart_order_products_users_time_master {}

explore: instacart_products {}

explore: instacart_product_master {}

explore: instacart_snacks_order_customer {}

explore: instacart_snacks_order_time {}

explore: instacart_top_alcohol_users {}

explore: instacart_top_alcohol_users_orders {}

explore: instacart_top_bakery_users {}

explore: instacart_top_bakery_users_orders {}

explore: instacart_top_beverage_users {}

explore: instacart_top_beverage_users_orders {}

explore: instacart_top_snacks_users {}

explore: instacart_top_snacks_users_orders {}

explore: instacart_top_users {}

explore: instacart_top_users_all_products {}

explore: instacart_total_users {}

explore: instacart_unique_users {}

explore: load_history {}

explore: mkt_expenses {}

explore: mytable {}

explore: myview {}

explore: myview2 {}

explore: my_first_dbt_model {}

explore: my_second_dbt_model {}

explore: my_view {}

explore: netflix_customer_agg_metrics {}

explore: netflix_customer_agg_metrics_china {}

explore: netflix_customer_agg_metrics_india {}

explore: netflix_customer_analytics_base {}

explore: ott_platforms_netflix_customer_master {}

explore: netflix_customer_payments_agg_metrics {}

explore: netflix_customer_payments_agg_metrics_india {}

explore: netflix_customer_payments_by_type {}

explore: netflix_customer_payments_master {}

explore: ott_platforms_netflix_customer_paymets_by_type {}

explore: netflix_customer_titles_full {}

explore: netflix_customer_title_metrics_details {}

explore: netflix_title_agg_metrics {}

explore: netflix_title_analytics_base {}

explore: netflix_title_master {}

explore: netflix_viewership_master {}

explore: netflix_watch_delay_by_months {}

explore: object_privileges {}

explore: order_payments {}

explore: packages {}

explore: pipes {}

explore: procedures {}

explore: raw_customers {}

explore: raw_orders {}

explore: raw_payments {}

explore: referential_constraints {}

explore: replication_databases {}

explore: sales_mkt_ad_expenses {}

explore: sales_mkt_expenses {}

explore: sales_mkt_expenses_all {}

explore: sales_mkt_total_expenses {}

explore: schemata {}

explore: sequences {}

explore: stages {}

explore: stg_customers {}

explore: stg_orders {}

explore: stg_payments {}

explore: student_scores {}

explore: tables {}

explore: table_constraints {}

explore: table_privileges {}

explore: table_storage_metrics {}

explore: temp_table {}

explore: usage_privileges {}

explore: views {}

explore: acs2017_county_data {}

explore: acs2017_state_data {}

explore: endpoint_pfile_2005052320200712 {}


explore: npidata_pfile_2005052320200712 {}

explore: othername_pfile_2005052320200712 {}

explore: us_gdp {}
