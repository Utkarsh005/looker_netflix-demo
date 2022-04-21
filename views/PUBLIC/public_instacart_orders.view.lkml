# The name of this view in Looker is "Public Instacart Orders"
view: public_instacart_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."INSTACART_ORDERS"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Days Since Prior Order" in Explore.

  dimension: days_since_prior_order {
    type: string
    sql: ${TABLE}."days_since_prior_order" ;;
  }

  dimension: eval_set {
    type: string
    sql: ${TABLE}."eval_set" ;;
  }

  dimension: order_dow {
    type: number
    sql: ${TABLE}."order_dow" ;;
  }

  dimension: order_hour_of_day {
    type: number
    sql: ${TABLE}."order_hour_of_day" ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}."order_number" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_order_number {
    type: sum
    sql: ${order_number} ;;
  }

  measure: average_order_number {
    type: average
    sql: ${order_number} ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
