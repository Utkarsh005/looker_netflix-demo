# The name of this view in Looker is "Covid State Level Analytics"
view: covid_state_level_analytics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "COVID_19"."COVID_STATE_LEVEL_ANALYTICS"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Active Mm" in Explore.

  dimension: active_mm {
    type: number
    sql: ${TABLE}."ACTIVE_MM" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_active_mm {
    type: sum
    sql: ${active_mm} ;;
  }

  measure: average_active_mm {
    type: average
    sql: ${active_mm} ;;
  }

  dimension: deaths_mm {
    type: number
    sql: ${TABLE}."DEATHS_MM" ;;
  }

  dimension: icu_per_1000_confirmed {
    type: number
    sql: ${TABLE}."ICU_PER_1000_CONFIRMED" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
  }

  dimension: mortality_rate {
    type: number
    sql: ${TABLE}."MORTALITY_RATE" ;;
  }

  dimension: perc_county_no_beds {
    type: number
    sql: ${TABLE}."PERC_COUNTY_NO_BEDS" ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}."PROVINCE_STATE" ;;
  }

  dimension: recovery_rate {
    type: number
    sql: ${TABLE}."RECOVERY_RATE" ;;
  }

  dimension: tot_active {
    type: number
    sql: ${TABLE}."TOT_ACTIVE" ;;
  }

  dimension: tot_confirmed {
    type: number
    sql: ${TABLE}."TOT_CONFIRMED" ;;
  }

  dimension: tot_county {
    type: number
    sql: ${TABLE}."TOT_COUNTY" ;;
  }

  dimension: tot_county_without_icu_beds {
    type: number
    sql: ${TABLE}."TOT_COUNTY_WITHOUT_ICU_BEDS" ;;
  }

  dimension: tot_deaths {
    type: number
    sql: ${TABLE}."TOT_DEATHS" ;;
  }

  dimension: tot_female_population {
    type: number
    sql: ${TABLE}."TOT_FEMALE_POPULATION" ;;
  }

  dimension: tot_hospitals {
    type: number
    sql: ${TABLE}."TOT_HOSPITALS" ;;
  }

  dimension: tot_icu_beds {
    type: number
    sql: ${TABLE}."TOT_ICU_BEDS" ;;
  }

  dimension: tot_male_population {
    type: number
    sql: ${TABLE}."TOT_MALE_POPULATION" ;;
  }

  dimension: tot_population {
    type: number
    sql: ${TABLE}."TOT_POPULATION" ;;
  }

  dimension: tot_recovered {
    type: number
    sql: ${TABLE}."TOT_RECOVERED" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
