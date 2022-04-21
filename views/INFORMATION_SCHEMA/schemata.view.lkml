# The name of this view in Looker is "Schemata"
view: schemata {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."SCHEMATA"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Catalog Name" in Explore.

  dimension: catalog_name {
    type: string
    sql: ${TABLE}."CATALOG_NAME" ;;
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

  dimension: default_character_set_catalog {
    type: string
    sql: ${TABLE}."DEFAULT_CHARACTER_SET_CATALOG" ;;
  }

  dimension: default_character_set_name {
    type: string
    sql: ${TABLE}."DEFAULT_CHARACTER_SET_NAME" ;;
  }

  dimension: default_character_set_schema {
    type: string
    sql: ${TABLE}."DEFAULT_CHARACTER_SET_SCHEMA" ;;
  }

  dimension: is_managed_access {
    type: string
    sql: ${TABLE}."IS_MANAGED_ACCESS" ;;
  }

  dimension: is_transient {
    type: string
    sql: ${TABLE}."IS_TRANSIENT" ;;
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

  dimension: retention_time {
    type: number
    sql: ${TABLE}."RETENTION_TIME" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_retention_time {
    type: sum
    sql: ${retention_time} ;;
  }

  measure: average_retention_time {
    type: average
    sql: ${retention_time} ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: schema_owner {
    type: string
    sql: ${TABLE}."SCHEMA_OWNER" ;;
  }

  dimension: sql_path {
    type: string
    sql: ${TABLE}."SQL_PATH" ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog_name, schema_name, default_character_set_name]
  }
}
