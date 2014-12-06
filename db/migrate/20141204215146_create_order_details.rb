class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.references :product, index: true
      t.integer :quantity
      t.float :discount

      t.timestamps
    end
  end
end
