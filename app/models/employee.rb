class Employee < ActiveRecord::Base
  has_many :orders
  has_many :employee_territories
end
