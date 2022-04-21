# The name of this view in Looker is "Student Scores"
view: student_scores {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."STUDENT_SCORES"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Gender" in Explore.

  dimension: gender {
    type: string
    sql: ${TABLE}."GENDER" ;;
  }

  dimension: lunch {
    type: string
    sql: ${TABLE}."LUNCH" ;;
  }

  dimension: math_score {
    type: number
    sql: ${TABLE}."MATH_SCORE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_math_score {
    type: sum
    sql: ${math_score} ;;
  }

  measure: average_math_score {
    type: average
    sql: ${math_score} ;;
  }

  dimension: parental_level_of_education {
    type: string
    sql: ${TABLE}."PARENTAL_LEVEL_OF_EDUCATION" ;;
  }

  dimension: raceethnicity {
    type: string
    sql: ${TABLE}."RACEETHNICITY" ;;
  }

  dimension: reading_score {
    type: number
    sql: ${TABLE}."READING_SCORE" ;;
  }

  dimension: test_preparation_course {
    type: string
    sql: ${TABLE}."TEST_PREPARATION_COURSE" ;;
  }

  dimension: writing_score {
    type: number
    sql: ${TABLE}."WRITING_SCORE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
