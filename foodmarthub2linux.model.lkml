connection: "foodmarthub2linux"

# include all the views
include: "*.view"

datagroup: foodmarthub2linux_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: foodmarthub2linux_default_datagroup

explore: loadmetrics {}

explore: querymetrics {}

explore: rrinfo {}

explore: rrstatus {}

explore: total_fact_count {}
