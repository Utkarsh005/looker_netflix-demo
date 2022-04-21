# The name of this view in Looker is "Netflix Customer Payments Master"
view: netflix_customer_payments_master {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "OTT_PLATFORMS"."NETFLIX_CUSTOMER_PAYMENTS_MASTER"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer ID" in Explore.

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}."PAYMENT_TYPE" ;;
  }

  dimension: payment_value {
    type: number
    sql: ${TABLE}."PAYMENT_VALUE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_payment_value {
    type: sum
    sql: ${payment_value} ;;
  }

  measure: average_payment_value {
    type: average
    sql: ${payment_value} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
