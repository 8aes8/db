class Order < ActiveRecord::Base
  has_many :order_details
  belongs_to :shipper
  belongs_to :employee
  belongs_to :customer
  has_many :products, :through => :order_details
end
