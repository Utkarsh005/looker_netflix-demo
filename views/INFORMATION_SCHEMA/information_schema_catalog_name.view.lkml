# The name of this view in Looker is "Information Schema Catalog Name"
view: information_schema_catalog_name {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "INFORMATION_SCHEMA"."INFORMATION_SCHEMA_CATALOG_NAME"
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

  measure: count {
    type: count
    drill_fields: [catalog_name]
  }
}
