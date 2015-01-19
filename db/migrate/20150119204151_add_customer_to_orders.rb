class AddCustomerToOrders < ActiveRecord::Migration
  def change
  	remove_column :orders, :customer, :string
  	add_reference :orders, :customer, index: true
  end
end
