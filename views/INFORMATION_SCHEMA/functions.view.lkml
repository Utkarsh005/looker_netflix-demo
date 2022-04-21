# The name of this view in Looker is "Functions"
view: functions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."FUNCTIONS"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "API Integration" in Explore.

  dimension: api_integration {
    type: string
    sql: ${TABLE}."API_INTEGRATION" ;;
  }

  dimension: argument_signature {
    type: string
    sql: ${TABLE}."ARGUMENT_SIGNATURE" ;;
  }

  dimension: character_maximum_length {
    type: number
    sql: ${TABLE}."CHARACTER_MAXIMUM_LENGTH" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_character_maximum_length {
    type: sum
    sql: ${character_maximum_length} ;;
  }

  measure: average_character_maximum_length {
    type: average
    sql: ${character_maximum_length} ;;
  }

  dimension: character_octet_length {
    type: number
    sql: ${TABLE}."CHARACTER_OCTET_LENGTH" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  dimension: compression {
    type: string
    sql: ${TABLE}."COMPRESSION" ;;
  }

  dimension: context_headers {
    type: string
    sql: ${TABLE}."CONTEXT_HEADERS" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
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
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}."DATA_TYPE" ;;
  }

  dimension: function_catalog {
    type: string
    sql: ${TABLE}."FUNCTION_CATALOG" ;;
  }

  dimension: function_definition {
    type: string
    sql: ${TABLE}."FUNCTION_DEFINITION" ;;
  }

  dimension: function_language {
    type: string
    sql: ${TABLE}."FUNCTION_LANGUAGE" ;;
  }

  dimension: function_name {
    type: string
    sql: ${TABLE}."FUNCTION_NAME" ;;
  }

  dimension: function_owner {
    type: string
    sql: ${TABLE}."FUNCTION_OWNER" ;;
  }

  dimension: function_schema {
    type: string
    sql: ${TABLE}."FUNCTION_SCHEMA" ;;
  }

  dimension: handler {
    type: string
    sql: ${TABLE}."HANDLER" ;;
  }

  dimension: imports {
    type: string
    sql: ${TABLE}."IMPORTS" ;;
  }

  dimension: is_external {
    type: string
    sql: ${TABLE}."IS_EXTERNAL" ;;
  }

  dimension: is_null_call {
    type: string
    sql: ${TABLE}."IS_NULL_CALL" ;;
  }

  dimension: is_secure {
    type: string
    sql: ${TABLE}."IS_SECURE" ;;
  }

  dimension_group: last_altered {
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
    sql: ${TABLE}."LAST_ALTERED" ;;
  }

  dimension: max_batch_rows {
    type: number
    sql: ${TABLE}."MAX_BATCH_ROWS" ;;
  }

  dimension: numeric_precision {
    type: number
    sql: ${TABLE}."NUMERIC_PRECISION" ;;
  }

  dimension: numeric_precision_radix {
    type: number
    sql: ${TABLE}."NUMERIC_PRECISION_RADIX" ;;
  }

  dimension: numeric_scale {
    type: number
    sql: ${TABLE}."NUMERIC_SCALE" ;;
  }

  dimension: request_translator {
    type: string
    sql: ${TABLE}."REQUEST_TRANSLATOR" ;;
  }

  dimension: response_translator {
    type: string
    sql: ${TABLE}."RESPONSE_TRANSLATOR" ;;
  }

  dimension: target_path {
    type: string
    sql: ${TABLE}."TARGET_PATH" ;;
  }

  dimension: volatility {
    type: string
    sql: ${TABLE}."VOLATILITY" ;;
  }

  measure: count {
    type: count
    drill_fields: [function_name]
  }
}
