json.array!(@employees) do |employee|
  json.extract! employee, :id, :last_name, :first_name, :title, :title_of_courtesy, :birth_date, :hire_date, :address, :city, :region, :postal_code, :country, :home_phone, :extension, :notest, :reports_to, :photo_path
  json.url employee_url(employee, format: :json)
end
