# The name of this view in Looker is "Covid State Level Demographics Agg"
view: covid_state_level_demographics_agg {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "COVID_19"."COVID_STATE_LEVEL_DEMOGRAPHICS_AGG"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "State" in Explore.

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: tot_female_population {
    type: number
    sql: ${TABLE}."TOT_FEMALE_POPULATION" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_tot_female_population {
    type: sum
    sql: ${tot_female_population} ;;
  }

  measure: average_tot_female_population {
    type: average
    sql: ${tot_female_population} ;;
  }

  dimension: tot_male_population {
    type: number
    sql: ${TABLE}."TOT_MALE_POPULATION" ;;
  }

  dimension: tot_population {
    type: number
    sql: ${TABLE}."TOT_POPULATION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
