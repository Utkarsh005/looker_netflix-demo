# The name of this view in Looker is "Table Constraints"
view: table_constraints {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."TABLE_CONSTRAINTS"
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

  dimension: constraint_catalog {
    type: string
    sql: ${TABLE}."CONSTRAINT_CATALOG" ;;
  }

  dimension: constraint_name {
    type: string
    sql: ${TABLE}."CONSTRAINT_NAME" ;;
  }

  dimension: constraint_schema {
    type: string
    sql: ${TABLE}."CONSTRAINT_SCHEMA" ;;
  }

  dimension: constraint_type {
    type: string
    sql: ${TABLE}."CONSTRAINT_TYPE" ;;
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

  dimension: enforced {
    type: string
    sql: ${TABLE}."ENFORCED" ;;
  }

  dimension: initially_deferred {
    type: string
    sql: ${TABLE}."INITIALLY_DEFERRED" ;;
  }

  dimension: is_deferrable {
    type: string
    sql: ${TABLE}."IS_DEFERRABLE" ;;
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

  dimension: table_catalog {
    type: string
    sql: ${TABLE}."TABLE_CATALOG" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}."TABLE_SCHEMA" ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, constraint_name]
  }
}
