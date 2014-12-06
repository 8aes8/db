class AddTerritorieToEmployeeTerritories < ActiveRecord::Migration
  def change
    add_reference :employee_territories, :territorie, index: true
  end
end
