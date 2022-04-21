# The name of this view in Looker is "Covid Data"
view: covid_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "COVID_19"."COVID_DATA"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age Above65" in Explore.

  dimension: age_above65 {
    type: number
    sql: ${TABLE}."AGE_ABOVE65" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age_above65 {
    type: sum
    sql: ${age_above65} ;;
  }

  measure: average_age_above65 {
    type: average
    sql: ${age_above65} ;;
  }

  dimension: age_percentil {
    type: string
    sql: ${TABLE}."AGE_PERCENTIL" ;;
  }

  dimension: albumin_diff {
    type: number
    sql: ${TABLE}."ALBUMIN_DIFF" ;;
  }

  dimension: albumin_max {
    type: number
    sql: ${TABLE}."ALBUMIN_MAX" ;;
  }

  dimension: albumin_mean {
    type: number
    sql: ${TABLE}."ALBUMIN_MEAN" ;;
  }

  dimension: albumin_median {
    type: number
    sql: ${TABLE}."ALBUMIN_MEDIAN" ;;
  }

  dimension: albumin_min {
    type: number
    sql: ${TABLE}."ALBUMIN_MIN" ;;
  }

  dimension: be_arterial_diff {
    type: number
    sql: ${TABLE}."BE_ARTERIAL_DIFF" ;;
  }

  dimension: be_arterial_max {
    type: number
    sql: ${TABLE}."BE_ARTERIAL_MAX" ;;
  }

  dimension: be_arterial_mean {
    type: number
    sql: ${TABLE}."BE_ARTERIAL_MEAN" ;;
  }

  dimension: be_arterial_median {
    type: number
    sql: ${TABLE}."BE_ARTERIAL_MEDIAN" ;;
  }

  dimension: be_arterial_min {
    type: number
    sql: ${TABLE}."BE_ARTERIAL_MIN" ;;
  }

  dimension: be_venous_diff {
    type: number
    sql: ${TABLE}."BE_VENOUS_DIFF" ;;
  }

  dimension: be_venous_max {
    type: number
    sql: ${TABLE}."BE_VENOUS_MAX" ;;
  }

  dimension: be_venous_mean {
    type: number
    sql: ${TABLE}."BE_VENOUS_MEAN" ;;
  }

  dimension: be_venous_median {
    type: number
    sql: ${TABLE}."BE_VENOUS_MEDIAN" ;;
  }

  dimension: be_venous_min {
    type: number
    sql: ${TABLE}."BE_VENOUS_MIN" ;;
  }

  dimension: bic_arterial_diff {
    type: number
    sql: ${TABLE}."BIC_ARTERIAL_DIFF" ;;
  }

  dimension: bic_arterial_max {
    type: number
    sql: ${TABLE}."BIC_ARTERIAL_MAX" ;;
  }

  dimension: bic_arterial_mean {
    type: number
    sql: ${TABLE}."BIC_ARTERIAL_MEAN" ;;
  }

  dimension: bic_arterial_median {
    type: number
    sql: ${TABLE}."BIC_ARTERIAL_MEDIAN" ;;
  }

  dimension: bic_arterial_min {
    type: number
    sql: ${TABLE}."BIC_ARTERIAL_MIN" ;;
  }

  dimension: bic_venous_diff {
    type: number
    sql: ${TABLE}."BIC_VENOUS_DIFF" ;;
  }

  dimension: bic_venous_max {
    type: number
    sql: ${TABLE}."BIC_VENOUS_MAX" ;;
  }

  dimension: bic_venous_mean {
    type: number
    sql: ${TABLE}."BIC_VENOUS_MEAN" ;;
  }

  dimension: bic_venous_median {
    type: number
    sql: ${TABLE}."BIC_VENOUS_MEDIAN" ;;
  }

  dimension: bic_venous_min {
    type: number
    sql: ${TABLE}."BIC_VENOUS_MIN" ;;
  }

  dimension: billirubin_diff {
    type: number
    sql: ${TABLE}."BILLIRUBIN_DIFF" ;;
  }

  dimension: billirubin_max {
    type: number
    sql: ${TABLE}."BILLIRUBIN_MAX" ;;
  }

  dimension: billirubin_mean {
    type: number
    sql: ${TABLE}."BILLIRUBIN_MEAN" ;;
  }

  dimension: billirubin_median {
    type: number
    sql: ${TABLE}."BILLIRUBIN_MEDIAN" ;;
  }

  dimension: billirubin_min {
    type: number
    sql: ${TABLE}."BILLIRUBIN_MIN" ;;
  }

  dimension: blast_diff {
    type: number
    sql: ${TABLE}."BLAST_DIFF" ;;
  }

  dimension: blast_max {
    type: number
    sql: ${TABLE}."BLAST_MAX" ;;
  }

  dimension: blast_mean {
    type: number
    sql: ${TABLE}."BLAST_MEAN" ;;
  }

  dimension: blast_median {
    type: number
    sql: ${TABLE}."BLAST_MEDIAN" ;;
  }

  dimension: blast_min {
    type: number
    sql: ${TABLE}."BLAST_MIN" ;;
  }

  dimension: bloodpressure_diastolic_diff {
    type: number
    sql: ${TABLE}."BLOODPRESSURE_DIASTOLIC_DIFF" ;;
  }

  dimension: bloodpressure_diastolic_diff_rel {
    type: number
    sql: ${TABLE}."BLOODPRESSURE_DIASTOLIC_DIFF_REL" ;;
  }

  dimension: bloodpressure_diastolic_max {
    type: number
    sql: ${TABLE}."BLOODPRESSURE_DIASTOLIC_MAX" ;;
  }

  dimension: bloodpressure_diastolic_mean {
    type: number
    sql: ${TABLE}."BLOODPRESSURE_DIASTOLIC_MEAN" ;;
  }

  dimension: bloodpressure_diastolic_median {
    type: number
    sql: ${TABLE}."BLOODPRESSURE_DIASTOLIC_MEDIAN" ;;
  }

  dimension: bloodpressure_diastolic_min {
    type: number
    sql: ${TABLE}."BLOODPRESSURE_DIASTOLIC_MIN" ;;
  }

  dimension: bloodpressure_sistolic_diff {
    type: number
    sql: ${TABLE}."BLOODPRESSURE_SISTOLIC_DIFF" ;;
  }

  dimension: bloodpressure_sistolic_diff_rel {
    type: number
    sql: ${TABLE}."BLOODPRESSURE_SISTOLIC_DIFF_REL" ;;
  }

  dimension: bloodpressure_sistolic_max {
    type: number
    sql: ${TABLE}."BLOODPRESSURE_SISTOLIC_MAX" ;;
  }

  dimension: bloodpressure_sistolic_mean {
    type: number
    sql: ${TABLE}."BLOODPRESSURE_SISTOLIC_MEAN" ;;
  }

  dimension: bloodpressure_sistolic_median {
    type: number
    sql: ${TABLE}."BLOODPRESSURE_SISTOLIC_MEDIAN" ;;
  }

  dimension: bloodpressure_sistolic_min {
    type: number
    sql: ${TABLE}."BLOODPRESSURE_SISTOLIC_MIN" ;;
  }

  dimension: calcium_diff {
    type: number
    sql: ${TABLE}."CALCIUM_DIFF" ;;
  }

  dimension: calcium_max {
    type: number
    sql: ${TABLE}."CALCIUM_MAX" ;;
  }

  dimension: calcium_mean {
    type: number
    sql: ${TABLE}."CALCIUM_MEAN" ;;
  }

  dimension: calcium_median {
    type: number
    sql: ${TABLE}."CALCIUM_MEDIAN" ;;
  }

  dimension: calcium_min {
    type: number
    sql: ${TABLE}."CALCIUM_MIN" ;;
  }

  dimension: creatinin_diff {
    type: number
    sql: ${TABLE}."CREATININ_DIFF" ;;
  }

  dimension: creatinin_max {
    type: number
    sql: ${TABLE}."CREATININ_MAX" ;;
  }

  dimension: creatinin_mean {
    type: number
    sql: ${TABLE}."CREATININ_MEAN" ;;
  }

  dimension: creatinin_median {
    type: number
    sql: ${TABLE}."CREATININ_MEDIAN" ;;
  }

  dimension: creatinin_min {
    type: number
    sql: ${TABLE}."CREATININ_MIN" ;;
  }

  dimension: dimer_diff {
    type: number
    sql: ${TABLE}."DIMER_DIFF" ;;
  }

  dimension: dimer_max {
    type: number
    sql: ${TABLE}."DIMER_MAX" ;;
  }

  dimension: dimer_mean {
    type: number
    sql: ${TABLE}."DIMER_MEAN" ;;
  }

  dimension: dimer_median {
    type: number
    sql: ${TABLE}."DIMER_MEDIAN" ;;
  }

  dimension: dimer_min {
    type: number
    sql: ${TABLE}."DIMER_MIN" ;;
  }

  dimension: disease_grouping_1 {
    type: number
    sql: ${TABLE}."DISEASE_GROUPING_1" ;;
  }

  dimension: disease_grouping_2 {
    type: number
    sql: ${TABLE}."DISEASE_GROUPING_2" ;;
  }

  dimension: disease_grouping_3 {
    type: number
    sql: ${TABLE}."DISEASE_GROUPING_3" ;;
  }

  dimension: disease_grouping_4 {
    type: number
    sql: ${TABLE}."DISEASE_GROUPING_4" ;;
  }

  dimension: disease_grouping_5 {
    type: number
    sql: ${TABLE}."DISEASE_GROUPING_5" ;;
  }

  dimension: disease_grouping_6 {
    type: number
    sql: ${TABLE}."DISEASE_GROUPING_6" ;;
  }

  dimension: ffa_diff {
    type: number
    sql: ${TABLE}."FFA_DIFF" ;;
  }

  dimension: ffa_max {
    type: number
    sql: ${TABLE}."FFA_MAX" ;;
  }

  dimension: ffa_mean {
    type: number
    sql: ${TABLE}."FFA_MEAN" ;;
  }

  dimension: ffa_median {
    type: number
    sql: ${TABLE}."FFA_MEDIAN" ;;
  }

  dimension: ffa_min {
    type: number
    sql: ${TABLE}."FFA_MIN" ;;
  }

  dimension: gender {
    type: number
    sql: ${TABLE}."GENDER" ;;
  }

  dimension: ggt_diff {
    type: number
    sql: ${TABLE}."GGT_DIFF" ;;
  }

  dimension: ggt_max {
    type: number
    sql: ${TABLE}."GGT_MAX" ;;
  }

  dimension: ggt_mean {
    type: number
    sql: ${TABLE}."GGT_MEAN" ;;
  }

  dimension: ggt_median {
    type: number
    sql: ${TABLE}."GGT_MEDIAN" ;;
  }

  dimension: ggt_min {
    type: number
    sql: ${TABLE}."GGT_MIN" ;;
  }

  dimension: glucose_diff {
    type: number
    sql: ${TABLE}."GLUCOSE_DIFF" ;;
  }

  dimension: glucose_max {
    type: number
    sql: ${TABLE}."GLUCOSE_MAX" ;;
  }

  dimension: glucose_mean {
    type: number
    sql: ${TABLE}."GLUCOSE_MEAN" ;;
  }

  dimension: glucose_median {
    type: number
    sql: ${TABLE}."GLUCOSE_MEDIAN" ;;
  }

  dimension: glucose_min {
    type: number
    sql: ${TABLE}."GLUCOSE_MIN" ;;
  }

  dimension: heart_rate_diff {
    type: number
    sql: ${TABLE}."HEART_RATE_DIFF" ;;
  }

  dimension: heart_rate_diff_rel {
    type: number
    sql: ${TABLE}."HEART_RATE_DIFF_REL" ;;
  }

  dimension: heart_rate_max {
    type: number
    sql: ${TABLE}."HEART_RATE_MAX" ;;
  }

  dimension: heart_rate_mean {
    type: number
    sql: ${TABLE}."HEART_RATE_MEAN" ;;
  }

  dimension: heart_rate_median {
    type: number
    sql: ${TABLE}."HEART_RATE_MEDIAN" ;;
  }

  dimension: heart_rate_min {
    type: number
    sql: ${TABLE}."HEART_RATE_MIN" ;;
  }

  dimension: hematocrite_diff {
    type: number
    sql: ${TABLE}."HEMATOCRITE_DIFF" ;;
  }

  dimension: hematocrite_max {
    type: number
    sql: ${TABLE}."HEMATOCRITE_MAX" ;;
  }

  dimension: hematocrite_mean {
    type: number
    sql: ${TABLE}."HEMATOCRITE_MEAN" ;;
  }

  dimension: hematocrite_median {
    type: number
    sql: ${TABLE}."HEMATOCRITE_MEDIAN" ;;
  }

  dimension: hematocrite_min {
    type: number
    sql: ${TABLE}."HEMATOCRITE_MIN" ;;
  }

  dimension: hemoglobin_diff {
    type: number
    sql: ${TABLE}."HEMOGLOBIN_DIFF" ;;
  }

  dimension: hemoglobin_max {
    type: number
    sql: ${TABLE}."HEMOGLOBIN_MAX" ;;
  }

  dimension: hemoglobin_mean {
    type: number
    sql: ${TABLE}."HEMOGLOBIN_MEAN" ;;
  }

  dimension: hemoglobin_median {
    type: number
    sql: ${TABLE}."HEMOGLOBIN_MEDIAN" ;;
  }

  dimension: hemoglobin_min {
    type: number
    sql: ${TABLE}."HEMOGLOBIN_MIN" ;;
  }

  dimension: htn {
    type: number
    sql: ${TABLE}."HTN" ;;
  }

  dimension: icu {
    type: number
    sql: ${TABLE}."ICU" ;;
  }

  dimension: immunocompromised {
    type: number
    sql: ${TABLE}."IMMUNOCOMPROMISED" ;;
  }

  dimension: inr_diff {
    type: number
    sql: ${TABLE}."INR_DIFF" ;;
  }

  dimension: inr_max {
    type: number
    sql: ${TABLE}."INR_MAX" ;;
  }

  dimension: inr_mean {
    type: number
    sql: ${TABLE}."INR_MEAN" ;;
  }

  dimension: inr_median {
    type: number
    sql: ${TABLE}."INR_MEDIAN" ;;
  }

  dimension: inr_min {
    type: number
    sql: ${TABLE}."INR_MIN" ;;
  }

  dimension: lactate_diff {
    type: number
    sql: ${TABLE}."LACTATE_DIFF" ;;
  }

  dimension: lactate_max {
    type: number
    sql: ${TABLE}."LACTATE_MAX" ;;
  }

  dimension: lactate_mean {
    type: number
    sql: ${TABLE}."LACTATE_MEAN" ;;
  }

  dimension: lactate_median {
    type: number
    sql: ${TABLE}."LACTATE_MEDIAN" ;;
  }

  dimension: lactate_min {
    type: number
    sql: ${TABLE}."LACTATE_MIN" ;;
  }

  dimension: leukocytes_diff {
    type: number
    sql: ${TABLE}."LEUKOCYTES_DIFF" ;;
  }

  dimension: leukocytes_max {
    type: number
    sql: ${TABLE}."LEUKOCYTES_MAX" ;;
  }

  dimension: leukocytes_mean {
    type: number
    sql: ${TABLE}."LEUKOCYTES_MEAN" ;;
  }

  dimension: leukocytes_median {
    type: number
    sql: ${TABLE}."LEUKOCYTES_MEDIAN" ;;
  }

  dimension: leukocytes_min {
    type: number
    sql: ${TABLE}."LEUKOCYTES_MIN" ;;
  }

  dimension: linfocitos_diff {
    type: number
    sql: ${TABLE}."LINFOCITOS_DIFF" ;;
  }

  dimension: linfocitos_max {
    type: number
    sql: ${TABLE}."LINFOCITOS_MAX" ;;
  }

  dimension: linfocitos_mean {
    type: number
    sql: ${TABLE}."LINFOCITOS_MEAN" ;;
  }

  dimension: linfocitos_median {
    type: number
    sql: ${TABLE}."LINFOCITOS_MEDIAN" ;;
  }

  dimension: linfocitos_min {
    type: number
    sql: ${TABLE}."LINFOCITOS_MIN" ;;
  }

  dimension: neutrophiles_diff {
    type: number
    sql: ${TABLE}."NEUTROPHILES_DIFF" ;;
  }

  dimension: neutrophiles_max {
    type: number
    sql: ${TABLE}."NEUTROPHILES_MAX" ;;
  }

  dimension: neutrophiles_mean {
    type: number
    sql: ${TABLE}."NEUTROPHILES_MEAN" ;;
  }

  dimension: neutrophiles_median {
    type: number
    sql: ${TABLE}."NEUTROPHILES_MEDIAN" ;;
  }

  dimension: neutrophiles_min {
    type: number
    sql: ${TABLE}."NEUTROPHILES_MIN" ;;
  }

  dimension: other {
    type: number
    sql: ${TABLE}."OTHER" ;;
  }

  dimension: oxygen_saturation_diff {
    type: number
    sql: ${TABLE}."OXYGEN_SATURATION_DIFF" ;;
  }

  dimension: oxygen_saturation_diff_rel {
    type: number
    sql: ${TABLE}."OXYGEN_SATURATION_DIFF_REL" ;;
  }

  dimension: oxygen_saturation_max {
    type: number
    sql: ${TABLE}."OXYGEN_SATURATION_MAX" ;;
  }

  dimension: oxygen_saturation_mean {
    type: number
    sql: ${TABLE}."OXYGEN_SATURATION_MEAN" ;;
  }

  dimension: oxygen_saturation_median {
    type: number
    sql: ${TABLE}."OXYGEN_SATURATION_MEDIAN" ;;
  }

  dimension: oxygen_saturation_min {
    type: number
    sql: ${TABLE}."OXYGEN_SATURATION_MIN" ;;
  }

  dimension: p02_arterial_diff {
    type: number
    sql: ${TABLE}."P02_ARTERIAL_DIFF" ;;
  }

  dimension: p02_arterial_max {
    type: number
    sql: ${TABLE}."P02_ARTERIAL_MAX" ;;
  }

  dimension: p02_arterial_mean {
    type: number
    sql: ${TABLE}."P02_ARTERIAL_MEAN" ;;
  }

  dimension: p02_arterial_median {
    type: number
    sql: ${TABLE}."P02_ARTERIAL_MEDIAN" ;;
  }

  dimension: p02_arterial_min {
    type: number
    sql: ${TABLE}."P02_ARTERIAL_MIN" ;;
  }

  dimension: p02_venous_diff {
    type: number
    sql: ${TABLE}."P02_VENOUS_DIFF" ;;
  }

  dimension: p02_venous_max {
    type: number
    sql: ${TABLE}."P02_VENOUS_MAX" ;;
  }

  dimension: p02_venous_mean {
    type: number
    sql: ${TABLE}."P02_VENOUS_MEAN" ;;
  }

  dimension: p02_venous_median {
    type: number
    sql: ${TABLE}."P02_VENOUS_MEDIAN" ;;
  }

  dimension: p02_venous_min {
    type: number
    sql: ${TABLE}."P02_VENOUS_MIN" ;;
  }

  dimension: patient_visit_identifier {
    type: number
    value_format_name: id
    sql: ${TABLE}."PATIENT_VISIT_IDENTIFIER" ;;
  }

  dimension: pc02_arterial_diff {
    type: number
    sql: ${TABLE}."PC02_ARTERIAL_DIFF" ;;
  }

  dimension: pc02_arterial_max {
    type: number
    sql: ${TABLE}."PC02_ARTERIAL_MAX" ;;
  }

  dimension: pc02_arterial_mean {
    type: number
    sql: ${TABLE}."PC02_ARTERIAL_MEAN" ;;
  }

  dimension: pc02_arterial_median {
    type: number
    sql: ${TABLE}."PC02_ARTERIAL_MEDIAN" ;;
  }

  dimension: pc02_arterial_min {
    type: number
    sql: ${TABLE}."PC02_ARTERIAL_MIN" ;;
  }

  dimension: pc02_venous_diff {
    type: number
    sql: ${TABLE}."PC02_VENOUS_DIFF" ;;
  }

  dimension: pc02_venous_max {
    type: number
    sql: ${TABLE}."PC02_VENOUS_MAX" ;;
  }

  dimension: pc02_venous_mean {
    type: number
    sql: ${TABLE}."PC02_VENOUS_MEAN" ;;
  }

  dimension: pc02_venous_median {
    type: number
    sql: ${TABLE}."PC02_VENOUS_MEDIAN" ;;
  }

  dimension: pc02_venous_min {
    type: number
    sql: ${TABLE}."PC02_VENOUS_MIN" ;;
  }

  dimension: pcr_diff {
    type: number
    sql: ${TABLE}."PCR_DIFF" ;;
  }

  dimension: pcr_max {
    type: number
    sql: ${TABLE}."PCR_MAX" ;;
  }

  dimension: pcr_mean {
    type: number
    sql: ${TABLE}."PCR_MEAN" ;;
  }

  dimension: pcr_median {
    type: number
    sql: ${TABLE}."PCR_MEDIAN" ;;
  }

  dimension: pcr_min {
    type: number
    sql: ${TABLE}."PCR_MIN" ;;
  }

  dimension: ph_arterial_diff {
    type: number
    sql: ${TABLE}."PH_ARTERIAL_DIFF" ;;
  }

  dimension: ph_arterial_max {
    type: number
    sql: ${TABLE}."PH_ARTERIAL_MAX" ;;
  }

  dimension: ph_arterial_mean {
    type: number
    sql: ${TABLE}."PH_ARTERIAL_MEAN" ;;
  }

  dimension: ph_arterial_median {
    type: number
    sql: ${TABLE}."PH_ARTERIAL_MEDIAN" ;;
  }

  dimension: ph_arterial_min {
    type: number
    sql: ${TABLE}."PH_ARTERIAL_MIN" ;;
  }

  dimension: ph_venous_diff {
    type: number
    sql: ${TABLE}."PH_VENOUS_DIFF" ;;
  }

  dimension: ph_venous_max {
    type: number
    sql: ${TABLE}."PH_VENOUS_MAX" ;;
  }

  dimension: ph_venous_mean {
    type: number
    sql: ${TABLE}."PH_VENOUS_MEAN" ;;
  }

  dimension: ph_venous_median {
    type: number
    sql: ${TABLE}."PH_VENOUS_MEDIAN" ;;
  }

  dimension: ph_venous_min {
    type: number
    sql: ${TABLE}."PH_VENOUS_MIN" ;;
  }

  dimension: platelets_diff {
    type: number
    sql: ${TABLE}."PLATELETS_DIFF" ;;
  }

  dimension: platelets_max {
    type: number
    sql: ${TABLE}."PLATELETS_MAX" ;;
  }

  dimension: platelets_mean {
    type: number
    sql: ${TABLE}."PLATELETS_MEAN" ;;
  }

  dimension: platelets_median {
    type: number
    sql: ${TABLE}."PLATELETS_MEDIAN" ;;
  }

  dimension: platelets_min {
    type: number
    sql: ${TABLE}."PLATELETS_MIN" ;;
  }

  dimension: potassium_diff {
    type: number
    sql: ${TABLE}."POTASSIUM_DIFF" ;;
  }

  dimension: potassium_max {
    type: number
    sql: ${TABLE}."POTASSIUM_MAX" ;;
  }

  dimension: potassium_mean {
    type: number
    sql: ${TABLE}."POTASSIUM_MEAN" ;;
  }

  dimension: potassium_median {
    type: number
    sql: ${TABLE}."POTASSIUM_MEDIAN" ;;
  }

  dimension: potassium_min {
    type: number
    sql: ${TABLE}."POTASSIUM_MIN" ;;
  }

  dimension: respiratory_rate_diff {
    type: number
    sql: ${TABLE}."RESPIRATORY_RATE_DIFF" ;;
  }

  dimension: respiratory_rate_diff_rel {
    type: number
    sql: ${TABLE}."RESPIRATORY_RATE_DIFF_REL" ;;
  }

  dimension: respiratory_rate_max {
    type: number
    sql: ${TABLE}."RESPIRATORY_RATE_MAX" ;;
  }

  dimension: respiratory_rate_mean {
    type: number
    sql: ${TABLE}."RESPIRATORY_RATE_MEAN" ;;
  }

  dimension: respiratory_rate_median {
    type: number
    sql: ${TABLE}."RESPIRATORY_RATE_MEDIAN" ;;
  }

  dimension: respiratory_rate_min {
    type: number
    sql: ${TABLE}."RESPIRATORY_RATE_MIN" ;;
  }

  dimension: sat02_arterial_diff {
    type: number
    sql: ${TABLE}."SAT02_ARTERIAL_DIFF" ;;
  }

  dimension: sat02_arterial_max {
    type: number
    sql: ${TABLE}."SAT02_ARTERIAL_MAX" ;;
  }

  dimension: sat02_arterial_mean {
    type: number
    sql: ${TABLE}."SAT02_ARTERIAL_MEAN" ;;
  }

  dimension: sat02_arterial_median {
    type: number
    sql: ${TABLE}."SAT02_ARTERIAL_MEDIAN" ;;
  }

  dimension: sat02_arterial_min {
    type: number
    sql: ${TABLE}."SAT02_ARTERIAL_MIN" ;;
  }

  dimension: sat02_venous_diff {
    type: number
    sql: ${TABLE}."SAT02_VENOUS_DIFF" ;;
  }

  dimension: sat02_venous_max {
    type: number
    sql: ${TABLE}."SAT02_VENOUS_MAX" ;;
  }

  dimension: sat02_venous_mean {
    type: number
    sql: ${TABLE}."SAT02_VENOUS_MEAN" ;;
  }

  dimension: sat02_venous_median {
    type: number
    sql: ${TABLE}."SAT02_VENOUS_MEDIAN" ;;
  }

  dimension: sat02_venous_min {
    type: number
    sql: ${TABLE}."SAT02_VENOUS_MIN" ;;
  }

  dimension: sodium_diff {
    type: number
    sql: ${TABLE}."SODIUM_DIFF" ;;
  }

  dimension: sodium_max {
    type: number
    sql: ${TABLE}."SODIUM_MAX" ;;
  }

  dimension: sodium_mean {
    type: number
    sql: ${TABLE}."SODIUM_MEAN" ;;
  }

  dimension: sodium_median {
    type: number
    sql: ${TABLE}."SODIUM_MEDIAN" ;;
  }

  dimension: sodium_min {
    type: number
    sql: ${TABLE}."SODIUM_MIN" ;;
  }

  dimension: temperature_diff {
    type: number
    sql: ${TABLE}."TEMPERATURE_DIFF" ;;
  }

  dimension: temperature_diff_rel {
    type: number
    sql: ${TABLE}."TEMPERATURE_DIFF_REL" ;;
  }

  dimension: temperature_max {
    type: number
    sql: ${TABLE}."TEMPERATURE_MAX" ;;
  }

  dimension: temperature_mean {
    type: number
    sql: ${TABLE}."TEMPERATURE_MEAN" ;;
  }

  dimension: temperature_median {
    type: number
    sql: ${TABLE}."TEMPERATURE_MEDIAN" ;;
  }

  dimension: temperature_min {
    type: number
    sql: ${TABLE}."TEMPERATURE_MIN" ;;
  }

  dimension: tgo_diff {
    type: number
    sql: ${TABLE}."TGO_DIFF" ;;
  }

  dimension: tgo_max {
    type: number
    sql: ${TABLE}."TGO_MAX" ;;
  }

  dimension: tgo_mean {
    type: number
    sql: ${TABLE}."TGO_MEAN" ;;
  }

  dimension: tgo_median {
    type: number
    sql: ${TABLE}."TGO_MEDIAN" ;;
  }

  dimension: tgo_min {
    type: number
    sql: ${TABLE}."TGO_MIN" ;;
  }

  dimension: tgp_diff {
    type: number
    sql: ${TABLE}."TGP_DIFF" ;;
  }

  dimension: tgp_max {
    type: number
    sql: ${TABLE}."TGP_MAX" ;;
  }

  dimension: tgp_mean {
    type: number
    sql: ${TABLE}."TGP_MEAN" ;;
  }

  dimension: tgp_median {
    type: number
    sql: ${TABLE}."TGP_MEDIAN" ;;
  }

  dimension: tgp_min {
    type: number
    sql: ${TABLE}."TGP_MIN" ;;
  }

  dimension: ttpa_diff {
    type: number
    sql: ${TABLE}."TTPA_DIFF" ;;
  }

  dimension: ttpa_max {
    type: number
    sql: ${TABLE}."TTPA_MAX" ;;
  }

  dimension: ttpa_mean {
    type: number
    sql: ${TABLE}."TTPA_MEAN" ;;
  }

  dimension: ttpa_median {
    type: number
    sql: ${TABLE}."TTPA_MEDIAN" ;;
  }

  dimension: ttpa_min {
    type: number
    sql: ${TABLE}."TTPA_MIN" ;;
  }

  dimension: urea_diff {
    type: number
    sql: ${TABLE}."UREA_DIFF" ;;
  }

  dimension: urea_max {
    type: number
    sql: ${TABLE}."UREA_MAX" ;;
  }

  dimension: urea_mean {
    type: number
    sql: ${TABLE}."UREA_MEAN" ;;
  }

  dimension: urea_median {
    type: number
    sql: ${TABLE}."UREA_MEDIAN" ;;
  }

  dimension: urea_min {
    type: number
    sql: ${TABLE}."UREA_MIN" ;;
  }

  dimension: window {
    type: string
    sql: ${TABLE}."WINDOW" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
