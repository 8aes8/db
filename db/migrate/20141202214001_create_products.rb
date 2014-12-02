class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :quantity_per_unit
      t.integer :units_in_stock
      t.integer :units_on_order
      t.integer :reorder_level
      t.boolean :discontinued

      t.timestamps
    end
  end
end
