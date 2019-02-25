view: product {
  sql_table_name: SalesLT.Product ;;

  dimension: product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductID ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.Color ;;
  }

  dimension_group: discontinued {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DiscontinuedDate ;;
  }

  dimension: list_price {
    type: string
    sql: ${TABLE}.ListPrice ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ModifiedDate ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.ProductCategoryID ;;
  }

  dimension: product_model_id {
    type: number
    sql: ${TABLE}.ProductModelID ;;
  }

  dimension: product_number {
    type: string
    sql: ${TABLE}.ProductNumber ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  dimension_group: sell_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SellEndDate ;;
  }

  dimension_group: sell_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SellStartDate ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.Size ;;
  }

  dimension: standard_cost {
    type: string
    sql: ${TABLE}.StandardCost ;;
  }

  dimension: thumb_nail_photo {
    type: string
    sql: ${TABLE}.ThumbNailPhoto ;;
  }

  dimension: thumbnail_photo_file_name {
    type: string
    sql: ${TABLE}.ThumbnailPhotoFileName ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.Weight ;;
  }

  measure: count {
    type: count
    drill_fields: [product_id, name, thumbnail_photo_file_name]
  }
}
