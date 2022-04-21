# The name of this view in Looker is "Othername Pfile 2005052320200712"
view: othername_pfile_2005052320200712 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "NPI_USA"."othername_pfile_20050523-20200712"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Npi" in Explore.

  dimension: npi {
    type: string
    sql: ${TABLE}."NPI" ;;
  }

  dimension: provider_other_organization_name {
    type: string
    sql: ${TABLE}."Provider Other Organization Name" ;;
  }

  dimension: provider_other_organization_name_type_code {
    type: string
    sql: ${TABLE}."Provider Other Organization Name Type Code" ;;
  }

  measure: count {
    type: count
    drill_fields: [provider_other_organization_name]
  }
}
