# The name of this view in Looker is "Table Privileges"
view: table_privileges {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."TABLE_PRIVILEGES"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Grantee" in Explore.

  dimension: grantee {
    type: string
    sql: ${TABLE}."GRANTEE" ;;
  }

  dimension: grantor {
    type: string
    sql: ${TABLE}."GRANTOR" ;;
  }

  dimension: is_grantable {
    type: string
    sql: ${TABLE}."IS_GRANTABLE" ;;
  }

  dimension: privilege_type {
    type: string
    sql: ${TABLE}."PRIVILEGE_TYPE" ;;
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

  dimension: with_hierarchy {
    type: string
    sql: ${TABLE}."WITH_HIERARCHY" ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name]
  }
}
