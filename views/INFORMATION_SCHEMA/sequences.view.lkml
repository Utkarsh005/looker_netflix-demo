# The name of this view in Looker is "Sequences"
view: sequences {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."SEQUENCES"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Comment" in Explore.

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
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

  dimension: cycle_option {
    type: string
    sql: ${TABLE}."CYCLE_OPTION" ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}."DATA_TYPE" ;;
  }

  dimension: increment {
    type: string
    sql: ${TABLE}."INCREMENT" ;;
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

  dimension: maximum_value {
    type: string
    sql: ${TABLE}."MAXIMUM_VALUE" ;;
  }

  dimension: minimum_value {
    type: string
    sql: ${TABLE}."MINIMUM_VALUE" ;;
  }

  dimension: next_value {
    type: string
    sql: ${TABLE}."NEXT_VALUE" ;;
  }

  dimension: numeric_precision {
    type: number
    sql: ${TABLE}."NUMERIC_PRECISION" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_numeric_precision {
    type: sum
    sql: ${numeric_precision} ;;
  }

  measure: average_numeric_precision {
    type: average
    sql: ${numeric_precision} ;;
  }

  dimension: numeric_precision_radix {
    type: number
    sql: ${TABLE}."NUMERIC_PRECISION_RADIX" ;;
  }

  dimension: numeric_scale {
    type: number
    sql: ${TABLE}."NUMERIC_SCALE" ;;
  }

  dimension: sequence_catalog {
    type: string
    sql: ${TABLE}."SEQUENCE_CATALOG" ;;
  }

  dimension: sequence_name {
    type: string
    sql: ${TABLE}."SEQUENCE_NAME" ;;
  }

  dimension: sequence_owner {
    type: string
    sql: ${TABLE}."SEQUENCE_OWNER" ;;
  }

  dimension: sequence_schema {
    type: string
    sql: ${TABLE}."SEQUENCE_SCHEMA" ;;
  }

  dimension: start_value {
    type: string
    sql: ${TABLE}."START_VALUE" ;;
  }

  measure: count {
    type: count
    drill_fields: [sequence_name]
  }
}
