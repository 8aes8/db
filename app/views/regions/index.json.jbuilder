json.array!(@regions) do |region|
  json.extract! region, :id, :region_description
  json.url region_url(region, format: :json)
end
