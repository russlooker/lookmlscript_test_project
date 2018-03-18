view: myViewName {
sql_table_name: public.order_items ;;

dimension: id {
    sql: ${TABLE}.`id` ;;
    type: string
}

    
dimension: value {
    sql: ${TABLE}.`value` ;;
    type: string
    hidden: yes
}

    
measure: count_distinct_id {
    sql: ${id} ;;
    type: count_distinct
}

}