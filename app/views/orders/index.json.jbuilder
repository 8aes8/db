json.array!(@orders) do |order|
  json.extract! order, :id, :customer, :order_date, :required_date, :shipped_date, :ship_via, :ship_name, :ship_address, :ship_city, :ship_region, :ship_postal_code, :ship_country
  json.url order_url(order, format: :json)
end
