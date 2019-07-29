view: querymetrics {
  sql_table_name: actian.querymetrics ;;

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }

  dimension: executiontimeseconds {
    type: number
    sql: ${TABLE}.executiontimeseconds ;;
  }

  dimension: dummy_count {
    type: number
    sql: ${TABLE}.dummy_count ;;
  }

  dimension: queryloopuser {
    type: string
    sql: ${TABLE}.queryloopuser ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: avg_execution_time {
    type: average
    value_format:"#.0;"
    #sql: 60 / ${executiontimeseconds} ;;
    # reversing the gage
    sql:  ${executiontimeseconds} ;;


    # note this produces a negative guage - where less is better
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chxr=0,50,2&chxl=0:|slow|fast&chco=FF0000,FF8040,FFFF00,00FF00&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chds=1,125&chma=10,0,0,0&chxt=y&chxr=0,50,2&chxl=0:|fast|slow&chco=00FF00,FFFF00,FF8040,FF0000&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chds=0,4&chxr=0,50,2&chxl=0:|fast|slow&chco=00FF00,FFFF00,FF8040,FF0000&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chds=0,10&chxr=0,50,2&chxl=0:|slow|fast&chco=FF0000,FF8040,FFFF00,00FF00&chf=bg,s,FFFFFF00&chd=t:{{ value }}&chl={{ rendered_value }}">;;

  }

  measure: gas_guage_colorful {
    type: number
    value_format:"#.0;"
    #sql: 60 / ${executiontimeseconds} ;;
    # reversing the gage
    sql: case ${avg_execution_time} when 0 then 0 else 60/ ${avg_execution_time} end ;;


    # note this produces a negative guage - where less is better
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chxr=0,50,2&chxl=0:|slow|fast&chco=FF0000,FF8040,FFFF00,00FF00&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chds=1,125&chma=10,0,0,0&chxt=y&chxr=0,50,2&chxl=0:|fast|slow&chco=00FF00,FFFF00,FF8040,FF0000&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chds=0,4&chxr=0,50,2&chxl=0:|fast|slow&chco=00FF00,FFFF00,FF8040,FF0000&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chds=0,04&chxr=0,50,2&chxl=0:|slow|fast&chco=FF0000,FF8040,FFFF00,00FF00&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;
    html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chds=0,15&chxr=0,10&chxl=0:|slow|fast&chco=FF0000,FF8040,FFFF00,00FF00&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;

  }

  measure: gas_guage_grey {
    type: number
    value_format:"#.0;"
    #sql: 60 / ${executiontimeseconds} ;;
    # reversing the gage
    sql: case ${avg_execution_time} when 0 then 0 else 60/ ${avg_execution_time} end ;;


    # note this produces a negative guage - where less is better
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chxr=0,50,2&chxl=0:|slow|fast&chco=FF0000,FF8040,FFFF00,00FF00&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chds=1,125&chma=10,0,0,0&chxt=y&chxr=0,50,2&chxl=0:|fast|slow&chco=00FF00,FFFF00,FF8040,FF0000&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chds=0,4&chxr=0,50,2&chxl=0:|fast|slow&chco=00FF00,FFFF00,FF8040,FF0000&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chds=0,04&chxr=0,50,2&chxl=0:|slow|fast&chco=696969,808080,A9A9A9,C0C0C0,D3D3D3,DCDCDC&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;
    html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chds=0,15&chxr=0,10&chxl=0:|slow|fast&chco=696969,808080,A9A9A9,C0C0C0,D3D3D3,DCDCDC&chf=bg,s,FFFFFF00&&chd=t:{{ value }}&chl={{ rendered_value }}">;;

  }



  measure: total_queries_served {
    type: sum
    sql: ${dummy_count} ;;

  }

  measure: number_queries_served {type: number sql: 1.0*(${total_queries_served});;
    html: <div style="float: left
          ; width:{{ value | times:100}}%
          ; background-color: rgba(0,180,0,{{ value | times:100 }})
          ; text-align:left
          ; color: #FFFFFF
          ; border-radius: 5px"> <p style="margin-bottom: 0; margin-left: 4px;">{{ value | times:100 }}%</p>
          </div>
          <div style="float: left
          ; width:{{ 1| minus:value | times:100}}%
          ; background-color: rgba(0,180,0,0.1)
          ; text-align:right
          ; border-radius: 5px"> <p style="margin-bottom: 0; margin-left: 0px; color:rgba(0,0,0,0.0" )>{{value}}</p>
          </div>
      ;;
  }
}
