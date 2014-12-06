class EmployeeTerritorie < ActiveRecord::Base
  belongs_to :territorie
  belongs_to :employee
end
