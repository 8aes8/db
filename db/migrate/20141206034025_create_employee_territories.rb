class CreateEmployeeTerritories < ActiveRecord::Migration
  def change
    create_table :employee_territories do |t|

      t.timestamps
    end
  end
end
