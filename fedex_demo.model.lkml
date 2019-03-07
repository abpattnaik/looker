connection: "fedex_demo"

# include all the views
include: "*.view"

datagroup: fedex_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fedex_demo_default_datagroup

explore: ratings {}

explore: ratings_tmp {}

explore: tbl_fed_ex_ratings {}

explore: tbl_ratings {}

explore: test {}

explore: geo_data {}
