# The name of this view in Looker is "Replication Databases"
view: replication_databases {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."REPLICATION_DATABASES"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account Name" in Explore.

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
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

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension: failover_allowed_to_accounts {
    type: string
    sql: ${TABLE}."FAILOVER_ALLOWED_TO_ACCOUNTS" ;;
  }

  dimension: is_primary {
    type: yesno
    sql: ${TABLE}."IS_PRIMARY" ;;
  }

  dimension: primary {
    type: string
    sql: ${TABLE}."PRIMARY" ;;
  }

  dimension: region_group {
    type: string
    sql: ${TABLE}."REGION_GROUP" ;;
  }

  dimension: replication_allowed_to_accounts {
    type: string
    sql: ${TABLE}."REPLICATION_ALLOWED_TO_ACCOUNTS" ;;
  }

  dimension: snowflake_region {
    type: string
    sql: ${TABLE}."SNOWFLAKE_REGION" ;;
  }

  measure: count {
    type: count
    drill_fields: [database_name, account_name]
  }
}
