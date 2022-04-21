# The name of this view in Looker is "Netflix Viewership Master"
view: netflix_viewership_master {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OTT_PLATFORMS"."NETFLIX_VIEWERSHIP_MASTER"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer ID" in Explore.

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: days_since_last_watched {
    type: number
    sql: ${TABLE}."DAYS_SINCE_LAST_WATCHED" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_days_since_last_watched {
    type: sum
    sql: ${days_since_last_watched} ;;
  }

  measure: average_days_since_last_watched {
    type: average
    sql: ${days_since_last_watched} ;;
  }

  dimension: episode {
    type: number
    sql: ${TABLE}."EPISODE" ;;
  }

  dimension: no_of_pauses {
    type: number
    sql: ${TABLE}."NO_OF_PAUSES" ;;
  }

  dimension: row_id {
    type: number
    sql: ${TABLE}."ROW_ID" ;;
  }

  dimension: season {
    type: number
    sql: ${TABLE}."SEASON" ;;
  }

  dimension: show_id {
    type: string
    sql: ${TABLE}."SHOW_ID" ;;
  }

  dimension: time_remaining_min {
    type: number
    sql: ${TABLE}."TIME_REMAINING_MIN" ;;
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
