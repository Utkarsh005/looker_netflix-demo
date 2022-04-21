# The name of this view in Looker is "Applicable Roles"
view: applicable_roles {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."APPLICABLE_ROLES"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Grantee" in Explore.

  dimension: grantee {
    type: string
    sql: ${TABLE}."GRANTEE" ;;
  }

  dimension: is_grantable {
    type: string
    sql: ${TABLE}."IS_GRANTABLE" ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}."ROLE_NAME" ;;
  }

  dimension: role_owner {
    type: string
    sql: ${TABLE}."ROLE_OWNER" ;;
  }

  measure: count {
    type: count
    drill_fields: [role_name]
  }
}
