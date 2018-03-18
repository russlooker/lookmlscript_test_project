include: "base.model.lkml"
include: "*.view.lkml"

explore: order_items_ {
  extends: [order_items_base]
  hidden: no
  view_name: order_items
  label: " Transactions"

  sql_always_where: ${order_items.product_vendor} = '' ;;


  join: _other_join {
    type: left_outer
    sql_on:  ${order_items.fk_product_vendor}  = ${_other_join.product_vendor_id}  ;;
    relationship: many_to_one
    #fields:[]
  }



}

