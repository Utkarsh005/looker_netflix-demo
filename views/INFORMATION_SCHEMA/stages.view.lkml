# The name of this view in Looker is "Stages"
view: stages {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."STAGES"
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

  dimension: stage_catalog {
    type: string
    sql: ${TABLE}."STAGE_CATALOG" ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}."STAGE_NAME" ;;
  }

  dimension: stage_owner {
    type: string
    sql: ${TABLE}."STAGE_OWNER" ;;
  }

  dimension: stage_region {
    type: string
    sql: ${TABLE}."STAGE_REGION" ;;
  }

  dimension: stage_schema {
    type: string
    sql: ${TABLE}."STAGE_SCHEMA" ;;
  }

  dimension: stage_type {
    type: string
    sql: ${TABLE}."STAGE_TYPE" ;;
  }

  dimension: stage_url {
    type: string
    sql: ${TABLE}."STAGE_URL" ;;
  }

  measure: count {
    type: count
    drill_fields: [stage_name]
  }
}
