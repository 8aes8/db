class AddSupplierToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :supplier, index: true
  end
end
