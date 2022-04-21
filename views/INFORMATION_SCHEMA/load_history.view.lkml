# The name of this view in Looker is "Load History"
view: load_history {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."LOAD_HISTORY"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Error Count" in Explore.

  dimension: error_count {
    type: number
    sql: ${TABLE}."ERROR_COUNT" ;;
  }

  dimension: error_limit {
    type: number
    sql: ${TABLE}."ERROR_LIMIT" ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}."FILE_NAME" ;;
  }

  dimension: first_error_character_position {
    type: number
    sql: ${TABLE}."FIRST_ERROR_CHARACTER_POSITION" ;;
  }

  dimension: first_error_col_name {
    type: string
    sql: ${TABLE}."FIRST_ERROR_COL_NAME" ;;
  }

  dimension: first_error_line_number {
    type: number
    sql: ${TABLE}."FIRST_ERROR_LINE_NUMBER" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_first_error_line_number {
    type: sum
    sql: ${first_error_line_number} ;;
  }

  measure: average_first_error_line_number {
    type: average
    sql: ${first_error_line_number} ;;
  }

  dimension: first_error_message {
    type: string
    sql: ${TABLE}."FIRST_ERROR_MESSAGE" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_load {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LAST_LOAD_TIME" ;;
  }

  dimension: row_count {
    type: number
    sql: ${TABLE}."ROW_COUNT" ;;
  }

  dimension: row_parsed {
    type: number
    sql: ${TABLE}."ROW_PARSED" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [schema_name, file_name, table_name, first_error_col_name]
  }
}
