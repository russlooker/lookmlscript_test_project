include: "base.model.lkml"
include: "tennat3*.view.lkml"

explore: order_items_tennat3 {
  extends: [order_items_base]
  hidden: no
  view_name: order_items
  label: "tennat3 Transactions"

  sql_always_where: ${order_items.product_vendor} = 'tennat3' ;;


  join: tennat3_other_join {
    type: left_outer
    sql_on:  ${order_items.fk_product_vendor}  = ${tennat3_other_join.product_vendor_id}  ;;
    relationship: many_to_one
    #fields:[]
  }



}

