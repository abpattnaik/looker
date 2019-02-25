connection: "ablearning"

# include all the views
include: "*.view"

datagroup: ab_learning_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ab_learning_looker_default_datagroup

explore: build_version {}

explore: error_log {}
