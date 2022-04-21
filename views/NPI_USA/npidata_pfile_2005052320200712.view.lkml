# The name of this view in Looker is "Npidata Pfile 2005052320200712"
view: npidata_pfile_2005052320200712 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "NPI_USA"."npidata_pfile_20050523-20200712"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Authorized Official Credential Text" in Explore.

  dimension: authorized_official_credential_text {
    type: string
    sql: ${TABLE}."Authorized Official Credential Text" ;;
  }

  dimension: authorized_official_first_name {
    type: string
    sql: ${TABLE}."Authorized Official First Name" ;;
  }

  dimension: authorized_official_last_name {
    type: string
    sql: ${TABLE}."Authorized Official Last Name" ;;
  }

  dimension: authorized_official_middle_name {
    type: string
    sql: ${TABLE}."Authorized Official Middle Name" ;;
  }

  dimension: authorized_official_name_prefix_text {
    type: string
    sql: ${TABLE}."Authorized Official Name Prefix Text" ;;
  }

  dimension: authorized_official_name_suffix_text {
    type: string
    sql: ${TABLE}."Authorized Official Name Suffix Text" ;;
  }

  dimension: authorized_official_telephone_number {
    type: string
    sql: ${TABLE}."Authorized Official Telephone Number" ;;
  }

  dimension: authorized_official_title_or_position {
    type: string
    sql: ${TABLE}."Authorized Official Title or Position" ;;
  }

  dimension: certification_date {
    type: string
    sql: ${TABLE}."Certification Date" ;;
  }

  dimension: employer_identification_number_ein {
    type: string
    sql: ${TABLE}."Employer Identification Number (EIN)" ;;
  }

  dimension: entity_type_code {
    type: string
    sql: ${TABLE}."Entity Type Code" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_1 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_1" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_10 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_10" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_11 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_11" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_12 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_12" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_13 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_13" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_14 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_14" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_15 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_15" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_2 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_2" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_3 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_3" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_4 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_4" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_5 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_5" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_6 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_6" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_7 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_7" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_8 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_8" ;;
  }

  dimension: healthcare_provider_primary_taxonomy_switch_9 {
    type: string
    sql: ${TABLE}."Healthcare Provider Primary Taxonomy Switch_9" ;;
  }

  dimension: healthcare_provider_taxonomy_code_1 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_1" ;;
  }

  dimension: healthcare_provider_taxonomy_code_10 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_10" ;;
  }

  dimension: healthcare_provider_taxonomy_code_11 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_11" ;;
  }

  dimension: healthcare_provider_taxonomy_code_12 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_12" ;;
  }

  dimension: healthcare_provider_taxonomy_code_13 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_13" ;;
  }

  dimension: healthcare_provider_taxonomy_code_14 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_14" ;;
  }

  dimension: healthcare_provider_taxonomy_code_15 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_15" ;;
  }

  dimension: healthcare_provider_taxonomy_code_2 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_2" ;;
  }

  dimension: healthcare_provider_taxonomy_code_3 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_3" ;;
  }

  dimension: healthcare_provider_taxonomy_code_4 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_4" ;;
  }

  dimension: healthcare_provider_taxonomy_code_5 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_5" ;;
  }

  dimension: healthcare_provider_taxonomy_code_6 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_6" ;;
  }

  dimension: healthcare_provider_taxonomy_code_7 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_7" ;;
  }

  dimension: healthcare_provider_taxonomy_code_8 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_8" ;;
  }

  dimension: healthcare_provider_taxonomy_code_9 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Code_9" ;;
  }

  dimension: healthcare_provider_taxonomy_group_1 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_1" ;;
  }

  dimension: healthcare_provider_taxonomy_group_10 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_10" ;;
  }

  dimension: healthcare_provider_taxonomy_group_11 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_11" ;;
  }

  dimension: healthcare_provider_taxonomy_group_12 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_12" ;;
  }

  dimension: healthcare_provider_taxonomy_group_13 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_13" ;;
  }

  dimension: healthcare_provider_taxonomy_group_14 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_14" ;;
  }

  dimension: healthcare_provider_taxonomy_group_15 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_15" ;;
  }

  dimension: healthcare_provider_taxonomy_group_2 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_2" ;;
  }

  dimension: healthcare_provider_taxonomy_group_3 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_3" ;;
  }

  dimension: healthcare_provider_taxonomy_group_4 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_4" ;;
  }

  dimension: healthcare_provider_taxonomy_group_5 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_5" ;;
  }

  dimension: healthcare_provider_taxonomy_group_6 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_6" ;;
  }

  dimension: healthcare_provider_taxonomy_group_7 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_7" ;;
  }

  dimension: healthcare_provider_taxonomy_group_8 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_8" ;;
  }

  dimension: healthcare_provider_taxonomy_group_9 {
    type: string
    sql: ${TABLE}."Healthcare Provider Taxonomy Group_9" ;;
  }

  dimension: is_organization_subpart {
    type: string
    sql: ${TABLE}."Is Organization Subpart" ;;
  }

  dimension: is_sole_proprietor {
    type: string
    sql: ${TABLE}."Is Sole Proprietor" ;;
  }

  dimension: last_update_date {
    type: string
    sql: ${TABLE}."Last Update Date" ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}."NPI" ;;
  }

  dimension: npi_deactivation_date {
    type: string
    sql: ${TABLE}."NPI Deactivation Date" ;;
  }

  dimension: npi_deactivation_reason_code {
    type: string
    sql: ${TABLE}."NPI Deactivation Reason Code" ;;
  }

  dimension: npi_reactivation_date {
    type: string
    sql: ${TABLE}."NPI Reactivation Date" ;;
  }

  dimension: other_provider_identifier_1 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_1" ;;
  }

  dimension: other_provider_identifier_10 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_10" ;;
  }

  dimension: other_provider_identifier_11 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_11" ;;
  }

  dimension: other_provider_identifier_12 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_12" ;;
  }

  dimension: other_provider_identifier_13 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_13" ;;
  }

  dimension: other_provider_identifier_14 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_14" ;;
  }

  dimension: other_provider_identifier_15 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_15" ;;
  }

  dimension: other_provider_identifier_16 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_16" ;;
  }

  dimension: other_provider_identifier_17 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_17" ;;
  }

  dimension: other_provider_identifier_18 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_18" ;;
  }

  dimension: other_provider_identifier_19 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_19" ;;
  }

  dimension: other_provider_identifier_2 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_2" ;;
  }

  dimension: other_provider_identifier_20 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_20" ;;
  }

  dimension: other_provider_identifier_21 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_21" ;;
  }

  dimension: other_provider_identifier_22 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_22" ;;
  }

  dimension: other_provider_identifier_23 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_23" ;;
  }

  dimension: other_provider_identifier_24 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_24" ;;
  }

  dimension: other_provider_identifier_25 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_25" ;;
  }

  dimension: other_provider_identifier_26 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_26" ;;
  }

  dimension: other_provider_identifier_27 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_27" ;;
  }

  dimension: other_provider_identifier_28 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_28" ;;
  }

  dimension: other_provider_identifier_29 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_29" ;;
  }

  dimension: other_provider_identifier_3 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_3" ;;
  }

  dimension: other_provider_identifier_30 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_30" ;;
  }

  dimension: other_provider_identifier_31 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_31" ;;
  }

  dimension: other_provider_identifier_32 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_32" ;;
  }

  dimension: other_provider_identifier_33 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_33" ;;
  }

  dimension: other_provider_identifier_34 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_34" ;;
  }

  dimension: other_provider_identifier_35 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_35" ;;
  }

  dimension: other_provider_identifier_36 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_36" ;;
  }

  dimension: other_provider_identifier_37 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_37" ;;
  }

  dimension: other_provider_identifier_38 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_38" ;;
  }

  dimension: other_provider_identifier_39 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_39" ;;
  }

  dimension: other_provider_identifier_4 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_4" ;;
  }

  dimension: other_provider_identifier_40 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_40" ;;
  }

  dimension: other_provider_identifier_41 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_41" ;;
  }

  dimension: other_provider_identifier_42 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_42" ;;
  }

  dimension: other_provider_identifier_43 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_43" ;;
  }

  dimension: other_provider_identifier_44 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_44" ;;
  }

  dimension: other_provider_identifier_45 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_45" ;;
  }

  dimension: other_provider_identifier_46 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_46" ;;
  }

  dimension: other_provider_identifier_47 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_47" ;;
  }

  dimension: other_provider_identifier_48 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_48" ;;
  }

  dimension: other_provider_identifier_49 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_49" ;;
  }

  dimension: other_provider_identifier_5 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_5" ;;
  }

  dimension: other_provider_identifier_50 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_50" ;;
  }

  dimension: other_provider_identifier_6 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_6" ;;
  }

  dimension: other_provider_identifier_7 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_7" ;;
  }

  dimension: other_provider_identifier_8 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_8" ;;
  }

  dimension: other_provider_identifier_9 {
    type: string
    sql: ${TABLE}."Other Provider Identifier_9" ;;
  }

  dimension: other_provider_identifier_issuer_1 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_1" ;;
  }

  dimension: other_provider_identifier_issuer_10 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_10" ;;
  }

  dimension: other_provider_identifier_issuer_11 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_11" ;;
  }

  dimension: other_provider_identifier_issuer_12 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_12" ;;
  }

  dimension: other_provider_identifier_issuer_13 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_13" ;;
  }

  dimension: other_provider_identifier_issuer_14 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_14" ;;
  }

  dimension: other_provider_identifier_issuer_15 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_15" ;;
  }

  dimension: other_provider_identifier_issuer_16 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_16" ;;
  }

  dimension: other_provider_identifier_issuer_17 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_17" ;;
  }

  dimension: other_provider_identifier_issuer_18 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_18" ;;
  }

  dimension: other_provider_identifier_issuer_19 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_19" ;;
  }

  dimension: other_provider_identifier_issuer_2 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_2" ;;
  }

  dimension: other_provider_identifier_issuer_20 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_20" ;;
  }

  dimension: other_provider_identifier_issuer_21 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_21" ;;
  }

  dimension: other_provider_identifier_issuer_22 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_22" ;;
  }

  dimension: other_provider_identifier_issuer_23 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_23" ;;
  }

  dimension: other_provider_identifier_issuer_24 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_24" ;;
  }

  dimension: other_provider_identifier_issuer_25 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_25" ;;
  }

  dimension: other_provider_identifier_issuer_26 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_26" ;;
  }

  dimension: other_provider_identifier_issuer_27 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_27" ;;
  }

  dimension: other_provider_identifier_issuer_28 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_28" ;;
  }

  dimension: other_provider_identifier_issuer_29 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_29" ;;
  }

  dimension: other_provider_identifier_issuer_3 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_3" ;;
  }

  dimension: other_provider_identifier_issuer_30 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_30" ;;
  }

  dimension: other_provider_identifier_issuer_31 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_31" ;;
  }

  dimension: other_provider_identifier_issuer_32 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_32" ;;
  }

  dimension: other_provider_identifier_issuer_33 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_33" ;;
  }

  dimension: other_provider_identifier_issuer_34 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_34" ;;
  }

  dimension: other_provider_identifier_issuer_35 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_35" ;;
  }

  dimension: other_provider_identifier_issuer_36 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_36" ;;
  }

  dimension: other_provider_identifier_issuer_37 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_37" ;;
  }

  dimension: other_provider_identifier_issuer_38 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_38" ;;
  }

  dimension: other_provider_identifier_issuer_39 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_39" ;;
  }

  dimension: other_provider_identifier_issuer_4 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_4" ;;
  }

  dimension: other_provider_identifier_issuer_40 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_40" ;;
  }

  dimension: other_provider_identifier_issuer_41 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_41" ;;
  }

  dimension: other_provider_identifier_issuer_42 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_42" ;;
  }

  dimension: other_provider_identifier_issuer_43 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_43" ;;
  }

  dimension: other_provider_identifier_issuer_44 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_44" ;;
  }

  dimension: other_provider_identifier_issuer_45 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_45" ;;
  }

  dimension: other_provider_identifier_issuer_46 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_46" ;;
  }

  dimension: other_provider_identifier_issuer_47 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_47" ;;
  }

  dimension: other_provider_identifier_issuer_48 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_48" ;;
  }

  dimension: other_provider_identifier_issuer_49 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_49" ;;
  }

  dimension: other_provider_identifier_issuer_5 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_5" ;;
  }

  dimension: other_provider_identifier_issuer_50 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_50" ;;
  }

  dimension: other_provider_identifier_issuer_6 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_6" ;;
  }

  dimension: other_provider_identifier_issuer_7 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_7" ;;
  }

  dimension: other_provider_identifier_issuer_8 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_8" ;;
  }

  dimension: other_provider_identifier_issuer_9 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Issuer_9" ;;
  }

  dimension: other_provider_identifier_state_1 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_1" ;;
  }

  dimension: other_provider_identifier_state_10 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_10" ;;
  }

  dimension: other_provider_identifier_state_11 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_11" ;;
  }

  dimension: other_provider_identifier_state_12 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_12" ;;
  }

  dimension: other_provider_identifier_state_13 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_13" ;;
  }

  dimension: other_provider_identifier_state_14 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_14" ;;
  }

  dimension: other_provider_identifier_state_15 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_15" ;;
  }

  dimension: other_provider_identifier_state_16 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_16" ;;
  }

  dimension: other_provider_identifier_state_17 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_17" ;;
  }

  dimension: other_provider_identifier_state_18 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_18" ;;
  }

  dimension: other_provider_identifier_state_19 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_19" ;;
  }

  dimension: other_provider_identifier_state_2 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_2" ;;
  }

  dimension: other_provider_identifier_state_20 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_20" ;;
  }

  dimension: other_provider_identifier_state_21 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_21" ;;
  }

  dimension: other_provider_identifier_state_22 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_22" ;;
  }

  dimension: other_provider_identifier_state_23 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_23" ;;
  }

  dimension: other_provider_identifier_state_24 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_24" ;;
  }

  dimension: other_provider_identifier_state_25 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_25" ;;
  }

  dimension: other_provider_identifier_state_26 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_26" ;;
  }

  dimension: other_provider_identifier_state_27 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_27" ;;
  }

  dimension: other_provider_identifier_state_28 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_28" ;;
  }

  dimension: other_provider_identifier_state_29 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_29" ;;
  }

  dimension: other_provider_identifier_state_3 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_3" ;;
  }

  dimension: other_provider_identifier_state_30 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_30" ;;
  }

  dimension: other_provider_identifier_state_31 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_31" ;;
  }

  dimension: other_provider_identifier_state_32 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_32" ;;
  }

  dimension: other_provider_identifier_state_33 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_33" ;;
  }

  dimension: other_provider_identifier_state_34 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_34" ;;
  }

  dimension: other_provider_identifier_state_35 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_35" ;;
  }

  dimension: other_provider_identifier_state_36 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_36" ;;
  }

  dimension: other_provider_identifier_state_37 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_37" ;;
  }

  dimension: other_provider_identifier_state_38 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_38" ;;
  }

  dimension: other_provider_identifier_state_39 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_39" ;;
  }

  dimension: other_provider_identifier_state_4 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_4" ;;
  }

  dimension: other_provider_identifier_state_40 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_40" ;;
  }

  dimension: other_provider_identifier_state_41 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_41" ;;
  }

  dimension: other_provider_identifier_state_42 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_42" ;;
  }

  dimension: other_provider_identifier_state_43 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_43" ;;
  }

  dimension: other_provider_identifier_state_44 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_44" ;;
  }

  dimension: other_provider_identifier_state_45 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_45" ;;
  }

  dimension: other_provider_identifier_state_46 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_46" ;;
  }

  dimension: other_provider_identifier_state_47 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_47" ;;
  }

  dimension: other_provider_identifier_state_48 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_48" ;;
  }

  dimension: other_provider_identifier_state_49 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_49" ;;
  }

  dimension: other_provider_identifier_state_5 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_5" ;;
  }

  dimension: other_provider_identifier_state_50 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_50" ;;
  }

  dimension: other_provider_identifier_state_6 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_6" ;;
  }

  dimension: other_provider_identifier_state_7 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_7" ;;
  }

  dimension: other_provider_identifier_state_8 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_8" ;;
  }

  dimension: other_provider_identifier_state_9 {
    type: string
    sql: ${TABLE}."Other Provider Identifier State_9" ;;
  }

  dimension: other_provider_identifier_type_code_1 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_1" ;;
  }

  dimension: other_provider_identifier_type_code_10 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_10" ;;
  }

  dimension: other_provider_identifier_type_code_11 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_11" ;;
  }

  dimension: other_provider_identifier_type_code_12 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_12" ;;
  }

  dimension: other_provider_identifier_type_code_13 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_13" ;;
  }

  dimension: other_provider_identifier_type_code_14 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_14" ;;
  }

  dimension: other_provider_identifier_type_code_15 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_15" ;;
  }

  dimension: other_provider_identifier_type_code_16 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_16" ;;
  }

  dimension: other_provider_identifier_type_code_17 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_17" ;;
  }

  dimension: other_provider_identifier_type_code_18 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_18" ;;
  }

  dimension: other_provider_identifier_type_code_19 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_19" ;;
  }

  dimension: other_provider_identifier_type_code_2 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_2" ;;
  }

  dimension: other_provider_identifier_type_code_20 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_20" ;;
  }

  dimension: other_provider_identifier_type_code_21 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_21" ;;
  }

  dimension: other_provider_identifier_type_code_22 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_22" ;;
  }

  dimension: other_provider_identifier_type_code_23 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_23" ;;
  }

  dimension: other_provider_identifier_type_code_24 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_24" ;;
  }

  dimension: other_provider_identifier_type_code_25 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_25" ;;
  }

  dimension: other_provider_identifier_type_code_26 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_26" ;;
  }

  dimension: other_provider_identifier_type_code_27 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_27" ;;
  }

  dimension: other_provider_identifier_type_code_28 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_28" ;;
  }

  dimension: other_provider_identifier_type_code_29 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_29" ;;
  }

  dimension: other_provider_identifier_type_code_3 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_3" ;;
  }

  dimension: other_provider_identifier_type_code_30 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_30" ;;
  }

  dimension: other_provider_identifier_type_code_31 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_31" ;;
  }

  dimension: other_provider_identifier_type_code_32 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_32" ;;
  }

  dimension: other_provider_identifier_type_code_33 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_33" ;;
  }

  dimension: other_provider_identifier_type_code_34 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_34" ;;
  }

  dimension: other_provider_identifier_type_code_35 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_35" ;;
  }

  dimension: other_provider_identifier_type_code_36 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_36" ;;
  }

  dimension: other_provider_identifier_type_code_37 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_37" ;;
  }

  dimension: other_provider_identifier_type_code_38 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_38" ;;
  }

  dimension: other_provider_identifier_type_code_39 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_39" ;;
  }

  dimension: other_provider_identifier_type_code_4 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_4" ;;
  }

  dimension: other_provider_identifier_type_code_40 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_40" ;;
  }

  dimension: other_provider_identifier_type_code_41 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_41" ;;
  }

  dimension: other_provider_identifier_type_code_42 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_42" ;;
  }

  dimension: other_provider_identifier_type_code_43 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_43" ;;
  }

  dimension: other_provider_identifier_type_code_44 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_44" ;;
  }

  dimension: other_provider_identifier_type_code_45 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_45" ;;
  }

  dimension: other_provider_identifier_type_code_46 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_46" ;;
  }

  dimension: other_provider_identifier_type_code_47 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_47" ;;
  }

  dimension: other_provider_identifier_type_code_48 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_48" ;;
  }

  dimension: other_provider_identifier_type_code_49 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_49" ;;
  }

  dimension: other_provider_identifier_type_code_5 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_5" ;;
  }

  dimension: other_provider_identifier_type_code_50 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_50" ;;
  }

  dimension: other_provider_identifier_type_code_6 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_6" ;;
  }

  dimension: other_provider_identifier_type_code_7 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_7" ;;
  }

  dimension: other_provider_identifier_type_code_8 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_8" ;;
  }

  dimension: other_provider_identifier_type_code_9 {
    type: string
    sql: ${TABLE}."Other Provider Identifier Type Code_9" ;;
  }

  dimension: parent_organization_lbn {
    type: string
    sql: ${TABLE}."Parent Organization LBN" ;;
  }

  dimension: parent_organization_tin {
    type: string
    sql: ${TABLE}."Parent Organization TIN" ;;
  }

  dimension: provider_business_mailing_address_city_name {
    type: string
    sql: ${TABLE}."Provider Business Mailing Address City Name" ;;
  }

  dimension: provider_business_mailing_address_country_code_if_outside_u_s_ {
    type: string
    sql: ${TABLE}."Provider Business Mailing Address Country Code (If outside U.S.)" ;;
  }

  dimension: provider_business_mailing_address_fax_number {
    type: string
    sql: ${TABLE}."Provider Business Mailing Address Fax Number" ;;
  }

  dimension: provider_business_mailing_address_postal_code {
    type: string
    sql: ${TABLE}."Provider Business Mailing Address Postal Code" ;;
  }

  dimension: provider_business_mailing_address_state_name {
    type: string
    sql: ${TABLE}."Provider Business Mailing Address State Name" ;;
  }

  dimension: provider_business_mailing_address_telephone_number {
    type: string
    sql: ${TABLE}."Provider Business Mailing Address Telephone Number" ;;
  }

  dimension: provider_business_practice_location_address_city_name {
    type: string
    sql: ${TABLE}."Provider Business Practice Location Address City Name" ;;
  }

  dimension: provider_business_practice_location_address_country_code_if_outside_u_s_ {
    type: string
    sql: ${TABLE}."Provider Business Practice Location Address Country Code (If outside U.S.)" ;;
  }

  dimension: provider_business_practice_location_address_fax_number {
    type: string
    sql: ${TABLE}."Provider Business Practice Location Address Fax Number" ;;
  }

  dimension: provider_business_practice_location_address_postal_code {
    type: string
    sql: ${TABLE}."Provider Business Practice Location Address Postal Code" ;;
  }

  dimension: provider_business_practice_location_address_state_name {
    type: string
    sql: ${TABLE}."Provider Business Practice Location Address State Name" ;;
  }

  dimension: provider_business_practice_location_address_telephone_number {
    type: string
    sql: ${TABLE}."Provider Business Practice Location Address Telephone Number" ;;
  }

  dimension: provider_credential_text {
    type: string
    sql: ${TABLE}."Provider Credential Text" ;;
  }

  dimension: provider_enumeration_date {
    type: string
    sql: ${TABLE}."Provider Enumeration Date" ;;
  }

  dimension: provider_first_line_business_mailing_address {
    type: string
    sql: ${TABLE}."Provider First Line Business Mailing Address" ;;
  }

  dimension: provider_first_line_business_practice_location_address {
    type: string
    sql: ${TABLE}."Provider First Line Business Practice Location Address" ;;
  }

  dimension: provider_first_name {
    type: string
    sql: ${TABLE}."Provider First Name" ;;
  }

  dimension: provider_gender_code {
    type: string
    sql: ${TABLE}."Provider Gender Code" ;;
  }

  dimension: provider_last_name_legal_name {
    type: string
    sql: ${TABLE}."Provider Last Name (Legal Name)" ;;
  }

  dimension: provider_license_number_1 {
    type: string
    sql: ${TABLE}."Provider License Number_1" ;;
  }

  dimension: provider_license_number_10 {
    type: string
    sql: ${TABLE}."Provider License Number_10" ;;
  }

  dimension: provider_license_number_11 {
    type: string
    sql: ${TABLE}."Provider License Number_11" ;;
  }

  dimension: provider_license_number_12 {
    type: string
    sql: ${TABLE}."Provider License Number_12" ;;
  }

  dimension: provider_license_number_13 {
    type: string
    sql: ${TABLE}."Provider License Number_13" ;;
  }

  dimension: provider_license_number_14 {
    type: string
    sql: ${TABLE}."Provider License Number_14" ;;
  }

  dimension: provider_license_number_15 {
    type: string
    sql: ${TABLE}."Provider License Number_15" ;;
  }

  dimension: provider_license_number_2 {
    type: string
    sql: ${TABLE}."Provider License Number_2" ;;
  }

  dimension: provider_license_number_3 {
    type: string
    sql: ${TABLE}."Provider License Number_3" ;;
  }

  dimension: provider_license_number_4 {
    type: string
    sql: ${TABLE}."Provider License Number_4" ;;
  }

  dimension: provider_license_number_5 {
    type: string
    sql: ${TABLE}."Provider License Number_5" ;;
  }

  dimension: provider_license_number_6 {
    type: string
    sql: ${TABLE}."Provider License Number_6" ;;
  }

  dimension: provider_license_number_7 {
    type: string
    sql: ${TABLE}."Provider License Number_7" ;;
  }

  dimension: provider_license_number_8 {
    type: string
    sql: ${TABLE}."Provider License Number_8" ;;
  }

  dimension: provider_license_number_9 {
    type: string
    sql: ${TABLE}."Provider License Number_9" ;;
  }

  dimension: provider_license_number_state_code_1 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_1" ;;
  }

  dimension: provider_license_number_state_code_10 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_10" ;;
  }

  dimension: provider_license_number_state_code_11 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_11" ;;
  }

  dimension: provider_license_number_state_code_12 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_12" ;;
  }

  dimension: provider_license_number_state_code_13 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_13" ;;
  }

  dimension: provider_license_number_state_code_14 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_14" ;;
  }

  dimension: provider_license_number_state_code_15 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_15" ;;
  }

  dimension: provider_license_number_state_code_2 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_2" ;;
  }

  dimension: provider_license_number_state_code_3 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_3" ;;
  }

  dimension: provider_license_number_state_code_4 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_4" ;;
  }

  dimension: provider_license_number_state_code_5 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_5" ;;
  }

  dimension: provider_license_number_state_code_6 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_6" ;;
  }

  dimension: provider_license_number_state_code_7 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_7" ;;
  }

  dimension: provider_license_number_state_code_8 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_8" ;;
  }

  dimension: provider_license_number_state_code_9 {
    type: string
    sql: ${TABLE}."Provider License Number State Code_9" ;;
  }

  dimension: provider_middle_name {
    type: string
    sql: ${TABLE}."Provider Middle Name" ;;
  }

  dimension: provider_name_prefix_text {
    type: string
    sql: ${TABLE}."Provider Name Prefix Text" ;;
  }

  dimension: provider_name_suffix_text {
    type: string
    sql: ${TABLE}."Provider Name Suffix Text" ;;
  }

  dimension: provider_organization_name_legal_business_name {
    type: string
    sql: ${TABLE}."Provider Organization Name (Legal Business Name)" ;;
  }

  dimension: provider_other_credential_text {
    type: string
    sql: ${TABLE}."Provider Other Credential Text" ;;
  }

  dimension: provider_other_first_name {
    type: string
    sql: ${TABLE}."Provider Other First Name" ;;
  }

  dimension: provider_other_last_name {
    type: string
    sql: ${TABLE}."Provider Other Last Name" ;;
  }

  dimension: provider_other_last_name_type_code {
    type: string
    sql: ${TABLE}."Provider Other Last Name Type Code" ;;
  }

  dimension: provider_other_middle_name {
    type: string
    sql: ${TABLE}."Provider Other Middle Name" ;;
  }

  dimension: provider_other_name_prefix_text {
    type: string
    sql: ${TABLE}."Provider Other Name Prefix Text" ;;
  }

  dimension: provider_other_name_suffix_text {
    type: string
    sql: ${TABLE}."Provider Other Name Suffix Text" ;;
  }

  dimension: provider_other_organization_name {
    type: string
    sql: ${TABLE}."Provider Other Organization Name" ;;
  }

  dimension: provider_other_organization_name_type_code {
    type: string
    sql: ${TABLE}."Provider Other Organization Name Type Code" ;;
  }

  dimension: provider_second_line_business_mailing_address {
    type: string
    sql: ${TABLE}."Provider Second Line Business Mailing Address" ;;
  }

  dimension: provider_second_line_business_practice_location_address {
    type: string
    sql: ${TABLE}."Provider Second Line Business Practice Location Address" ;;
  }

  dimension: replacement_npi {
    type: string
    sql: ${TABLE}."Replacement NPI" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      provider_other_middle_name,
      provider_first_name,
      provider_last_name_legal_name,
      authorized_official_middle_name,
      provider_business_practice_location_address_city_name,
      authorized_official_first_name,
      provider_business_mailing_address_state_name,
      provider_business_mailing_address_city_name,
      provider_business_practice_location_address_state_name,
      provider_organization_name_legal_business_name,
      provider_other_first_name,
      provider_other_last_name,
      authorized_official_last_name,
      provider_middle_name,
      provider_other_organization_name
    ]
  }
}
