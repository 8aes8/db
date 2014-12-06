json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :company_name, :contact_name, :contact_title, :adress, :city, :region, :postal_colde, :country, :phone, :fax, :home_page
  json.url supplier_url(supplier, format: :json)
end
