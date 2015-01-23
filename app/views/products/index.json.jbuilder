json.array!(@products) do |product|
  json.extract! product, :id, :product_name, :quantity_per_unit, :units_in_stock, :units_on_order, :reorder_level, :discontinued, :category_id, :supplier_id
  json.url product_url(product, format: :json)
end
