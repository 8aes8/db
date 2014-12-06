class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :company_name
      t.string :contact_name
      t.string :contact_title
      t.string :adress
      t.string :city
      t.string :region
      t.string :postal_colde
      t.string :country
      t.string :phone
      t.string :fax
      t.text :home_page

      t.timestamps
    end
  end
end
