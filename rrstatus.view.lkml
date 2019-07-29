view: rrstatus {
  sql_table_name: actian.rrstatus ;;

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
