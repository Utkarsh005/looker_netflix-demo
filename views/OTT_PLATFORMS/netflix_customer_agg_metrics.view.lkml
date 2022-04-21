# The name of this view in Looker is "Netflix Customer Agg Metrics"
view: netflix_customer_agg_metrics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OTT_PLATFORMS"."NETFLIX_CUSTOMER_AGG_METRICS"
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

  dimension: months_inactive {
    type: number
    sql: ${TABLE}."MONTHS_INACTIVE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_months_inactive {
    type: sum
    sql: ${months_inactive} ;;
  }

  measure: average_months_inactive {
    type: average
    sql: ${months_inactive} ;;
  }

  dimension: no_of_pauses {
    type: number
    sql: ${TABLE}."NO_OF_PAUSES" ;;
  }

  dimension: no_of_shows_watched {
    type: number
    sql: ${TABLE}."NO_OF_SHOWS_WATCHED" ;;
  }

  dimension: perc_consumption {
    type: number
    sql: ${TABLE}."PERC_CONSUMPTION" ;;
  }

  dimension: total_content_time {
    type: number
    sql: ${TABLE}."TOTAL_CONTENT_TIME" ;;
  }

  dimension: total_remaining_time {
    type: number
    sql: ${TABLE}."TOTAL_REMAINING_TIME" ;;
  }

  dimension: total_spent {
    type: number
    sql: ${TABLE}."TOTAL_SPENT" ;;
  }

  dimension: total_watch_time {
    type: number
    sql: ${TABLE}."TOTAL_WATCH_TIME" ;;
  }

  dimension: variety_of_categories {
    type: number
    sql: ${TABLE}."VARIETY_OF_CATEGORIES" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
