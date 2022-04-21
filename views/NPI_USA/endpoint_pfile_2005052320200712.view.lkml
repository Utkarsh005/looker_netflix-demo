# The name of this view in Looker is "Endpoint Pfile 2005052320200712"
view: endpoint_pfile_2005052320200712 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "NPI_USA"."endpoint_pfile_20050523-20200712"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Affiliation" in Explore.

  dimension: affiliation {
    type: string
    sql: ${TABLE}."Affiliation" ;;
  }

  dimension: affiliation_address_city {
    type: string
    sql: ${TABLE}."Affiliation Address City" ;;
  }

  dimension: affiliation_address_country {
    type: string
    sql: ${TABLE}."Affiliation Address Country" ;;
  }

  dimension: affiliation_address_line_one {
    type: string
    sql: ${TABLE}."Affiliation Address Line One" ;;
  }

  dimension: affiliation_address_line_two {
    type: string
    sql: ${TABLE}."Affiliation Address Line Two" ;;
  }

  dimension: affiliation_address_postal_code {
    type: string
    sql: ${TABLE}."Affiliation Address Postal Code" ;;
  }

  dimension: affiliation_address_state {
    type: string
    sql: ${TABLE}."Affiliation Address State" ;;
  }

  dimension: affiliation_legal_business_name {
    type: string
    sql: ${TABLE}."Affiliation Legal Business Name" ;;
  }

  dimension: content_description {
    type: string
    sql: ${TABLE}."Content Description" ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}."Content Type" ;;
  }

  dimension: endpoint {
    type: string
    sql: ${TABLE}."Endpoint" ;;
  }

  dimension: endpoint_description {
    type: string
    sql: ${TABLE}."Endpoint Description" ;;
  }

  dimension: endpoint_type {
    type: string
    sql: ${TABLE}."Endpoint Type" ;;
  }

  dimension: endpoint_type_description {
    type: string
    sql: ${TABLE}."Endpoint Type Description" ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}."NPI" ;;
  }

  dimension: other_content_description {
    type: string
    sql: ${TABLE}."Other Content Description" ;;
  }

  dimension: other_use_description {
    type: string
    sql: ${TABLE}."Other Use Description" ;;
  }

  dimension: use_code {
    type: string
    sql: ${TABLE}."Use Code" ;;
  }

  dimension: use_description {
    type: string
    sql: ${TABLE}."Use Description" ;;
  }

  measure: count {
    type: count
    drill_fields: [affiliation_legal_business_name]
  }
}
