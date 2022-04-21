# The name of this view in Looker is "Netflix Customer Title Metrics Details"
view: netflix_customer_title_metrics_details {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OTT_PLATFORMS"."NETFLIX_CUSTOMER_TITLE_METRICS_DETAILS"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: country_of_origin {
    type: string
    sql: ${TABLE}."COUNTRY_OF_ORIGIN" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: days_since_last_watched {
    type: number
    sql: ${TABLE}."DAYS_SINCE_LAST_WATCHED" ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}."DURATION" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_duration {
    type: sum
    sql: ${duration} ;;
  }

  measure: average_duration {
    type: average
    sql: ${duration} ;;
  }

  dimension: episode {
    type: number
    sql: ${TABLE}."EPISODE" ;;
  }

  dimension: listed_in {
    type: string
    sql: ${TABLE}."LISTED_IN" ;;
  }

  dimension: no_of_pauses {
    type: number
    sql: ${TABLE}."NO_OF_PAUSES" ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."RATING" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: season {
    type: number
    sql: ${TABLE}."SEASON" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: time_remaining_min {
    type: number
    sql: ${TABLE}."TIME_REMAINING_MIN" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: title_type {
    type: string
    sql: ${TABLE}."TITLE_TYPE" ;;
  }

  dimension: total_value {
    type: number
    sql: ${TABLE}."TOTAL_VALUE" ;;
  }

  dimension: user_age {
    type: number
    sql: ${TABLE}."USER_AGE" ;;
  }

  dimension: watch_delay {
    type: string
    sql: ${TABLE}."WATCH_DELAY" ;;
  }

  dimension: watch_time_min {
    type: string
    sql: ${TABLE}."WATCH_TIME_MIN" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
