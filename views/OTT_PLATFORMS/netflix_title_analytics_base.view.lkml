# The name of this view in Looker is "Netflix Title Analytics Base"
view: netflix_title_analytics_base {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OTT_PLATFORMS"."NETFLIX_TITLE_ANALYTICS_BASE"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Audience Reach" in Explore.

  dimension: audience_reach {
    type: number
    sql: ${TABLE}."AUDIENCE_REACH" ;;
  }

  dimension: avg_inactivity_period_months {
    type: number
    sql: ${TABLE}."AVG_INACTIVITY_PERIOD_MONTHS" ;;
  }

  dimension: country_of_origin {
    type: string
    sql: ${TABLE}."COUNTRY_OF_ORIGIN" ;;
  }

  dimension: date_added {
    type: string
    sql: ${TABLE}."DATE_ADDED" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: director {
    type: string
    sql: ${TABLE}."DIRECTOR" ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}."DURATION" ;;
  }

  dimension: listed_in {
    type: string
    sql: ${TABLE}."LISTED_IN" ;;
  }

  dimension: overall_consumption_rate {
    type: number
    sql: ${TABLE}."OVERALL_CONSUMPTION_RATE" ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."RATING" ;;
  }

  dimension: release_year {
    type: number
    sql: ${TABLE}."RELEASE_YEAR" ;;
  }

  dimension: show_age_years {
    type: number
    sql: ${TABLE}."SHOW_AGE_YEARS" ;;
  }

  dimension: show_id {
    type: number
    sql: ${TABLE}."SHOW_ID" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: title_cast {
    type: string
    sql: ${TABLE}."TITLE_CAST" ;;
  }

  dimension: title_type {
    type: string
    sql: ${TABLE}."TITLE_TYPE" ;;
  }

  dimension: total_duration {
    type: number
    sql: ${TABLE}."TOTAL_DURATION" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_total_duration {
    type: sum
    sql: ${total_duration} ;;
  }

  measure: average_total_duration {
    type: average
    sql: ${total_duration} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
