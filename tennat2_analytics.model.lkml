include: "base.model.lkml"
include: "tennat2*.view.lkml"

explore: order_items_tennat2 {
  extends: [order_items_base]
  hidden: no
  view_name: order_items
  label: "tennat2 Transactions"

  sql_always_where: ${order_items.product_vendor} = 'tennat2' ;;


  join: tennat2_other_join {
    type: left_outer
    sql_on:  ${order_items.fk_product_vendor}  = ${tennat2_other_join.product_vendor_id}  ;;
    relationship: many_to_one
    #fields:[]
  }



}

