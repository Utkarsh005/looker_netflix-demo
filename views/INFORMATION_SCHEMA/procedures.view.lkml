# The name of this view in Looker is "Procedures"
view: procedures {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."PROCEDURES"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Argument Signature" in Explore.

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

  dimension: procedure_catalog {
    type: string
    sql: ${TABLE}."PROCEDURE_CATALOG" ;;
  }

  dimension: procedure_definition {
    type: string
    sql: ${TABLE}."PROCEDURE_DEFINITION" ;;
  }

  dimension: procedure_language {
    type: string
    sql: ${TABLE}."PROCEDURE_LANGUAGE" ;;
  }

  dimension: procedure_name {
    type: string
    sql: ${TABLE}."PROCEDURE_NAME" ;;
  }

  dimension: procedure_owner {
    type: string
    sql: ${TABLE}."PROCEDURE_OWNER" ;;
  }

  dimension: procedure_schema {
    type: string
    sql: ${TABLE}."PROCEDURE_SCHEMA" ;;
  }

  measure: count {
    type: count
    drill_fields: [procedure_name]
  }
}
