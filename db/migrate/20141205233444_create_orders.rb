class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer
      t.datetime :order_date
      t.datetime :required_date
      t.datetime :shipped_date
      t.integer :ship_via
      t.string :ship_name
      t.string :ship_address
      t.string :ship_city
      t.string :ship_region
      t.string :ship_postal_code
      t.string :ship_country

      t.timestamps
    end
  end
end
