# The name of this view in Looker is "Netflix Customer Titles Full"
view: netflix_customer_titles_full {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OTT_PLATFORMS"."NETFLIX_CUSTOMER_TITLES_FULL"
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

  dimension: creditcardno {
    type: number
    sql: ${TABLE}."CREDITCARDNO" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_creditcardno {
    type: sum
    sql: ${creditcardno} ;;
  }

  measure: average_creditcardno {
    type: average
    sql: ${creditcardno} ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: customergender {
    type: string
    sql: ${TABLE}."CUSTOMERGENDER" ;;
  }

  dimension: customername {
    type: string
    sql: ${TABLE}."CUSTOMERNAME" ;;
  }

  dimension: date_added {
    type: string
    sql: ${TABLE}."DATE_ADDED" ;;
  }

  dimension: days_since_last_watched {
    type: number
    sql: ${TABLE}."DAYS_SINCE_LAST_WATCHED" ;;
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

  dimension: episode {
    type: number
    sql: ${TABLE}."EPISODE" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: joining {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."JOINING_DATE" ;;
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

  dimension: release_year {
    type: number
    sql: ${TABLE}."RELEASE_YEAR" ;;
  }

  dimension: season {
    type: number
    sql: ${TABLE}."SEASON" ;;
  }

  dimension: show_id {
    type: number
    sql: ${TABLE}."SHOW_ID" ;;
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

  dimension: title_cast {
    type: string
    sql: ${TABLE}."TITLE_CAST" ;;
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

  dimension: watch_time_min {
    type: string
    sql: ${TABLE}."WATCH_TIME_MIN" ;;
  }

  measure: count {
    type: count
    drill_fields: [customername]
  }
}
