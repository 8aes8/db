class Territorie < ActiveRecord::Base
  belongs_to :region
  has_many :employee_territories
end
