view: total_fact_count {
  derived_table: {
    sql: --  how many different customers/day combos they appear on.   How many individual sales.
      SELECT sum(orig_fact_count) num1, dbtype from rrinfo group by dbtype
      union all
      SELECT sum(rowsloaded) num1, dbtype from loadmetrics where operation_type = 'load' group by dbtype
      ;;
  }

  dimension: num1 {
    type: string
    sql: ${TABLE}.num1 ;;
  }

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }

  measure: how_many_rows {
    type: sum
    sql: ${TABLE}.num1 ;;
  }


}
