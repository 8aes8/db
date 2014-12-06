json.array!(@territories) do |territory|
  json.extract! territory, :id, :territory_description, :region_id
  json.url territory_url(territory, format: :json)
end
