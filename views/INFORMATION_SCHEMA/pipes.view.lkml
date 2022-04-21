# The name of this view in Looker is "Pipes"
view: pipes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."PIPES"
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

  dimension: definition {
    type: string
    sql: ${TABLE}."DEFINITION" ;;
  }

  dimension: is_autoingest_enabled {
    type: string
    sql: ${TABLE}."IS_AUTOINGEST_ENABLED" ;;
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

  dimension: notification_channel_name {
    type: string
    sql: ${TABLE}."NOTIFICATION_CHANNEL_NAME" ;;
  }

  dimension: pattern {
    type: string
    sql: ${TABLE}."PATTERN" ;;
  }

  dimension: pipe_catalog {
    type: string
    sql: ${TABLE}."PIPE_CATALOG" ;;
  }

  dimension: pipe_name {
    type: string
    sql: ${TABLE}."PIPE_NAME" ;;
  }

  dimension: pipe_owner {
    type: string
    sql: ${TABLE}."PIPE_OWNER" ;;
  }

  dimension: pipe_schema {
    type: string
    sql: ${TABLE}."PIPE_SCHEMA" ;;
  }

  measure: count {
    type: count
    drill_fields: [pipe_name, notification_channel_name]
  }
}
