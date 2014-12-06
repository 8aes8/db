class AddEmployeeToEmployeeTerritories < ActiveRecord::Migration
  def change
    add_reference :employee_territories, :employee, index: true
  end
end
