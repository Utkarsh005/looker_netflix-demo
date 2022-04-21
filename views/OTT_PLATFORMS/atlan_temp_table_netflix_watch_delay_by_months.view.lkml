# The name of this view in Looker is "Atlan Temp Table Netflix Watch Delay By Months"
view: atlan_temp_table_netflix_watch_delay_by_months {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OTT_PLATFORMS"."ATLAN_TEMP_TABLE_NETFLIX_WATCH_DELAY_BY_MONTHS"
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

  dimension: nine_months {
    type: string
    sql: ${TABLE}."NINE_MONTHS" ;;
  }

  dimension: one_month {
    type: number
    sql: ${TABLE}."ONE_MONTH" ;;
  }

  dimension: one_year_or_beyond {
    type: string
    sql: ${TABLE}."ONE_YEAR_OR_BEYOND" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: six_months {
    type: string
    sql: ${TABLE}."SIX_MONTHS" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: three_months {
    type: string
    sql: ${TABLE}."THREE_MONTHS" ;;
  }

  dimension: user_age {
    type: number
    sql: ${TABLE}."USER_AGE" ;;
  }

  measure: count {
    type: count
    drill_fields: [customername]
  }
}
