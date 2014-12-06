class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :last_name
      t.string :first_name
      t.string :title
      t.string :title_of_courtesy
      t.datetime :birth_date
      t.datetime :hire_date
      t.string :address
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country
      t.string :home_phone
      t.string :extension
      t.text :notest
      t.integer :reports_to
      t.string :photo_path

      t.timestamps
    end
  end
end
