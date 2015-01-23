class Product < ActiveRecord::Base
  belongs_to :category
  has_many :order_details
  belongs_to :supplier
  has_many :orders, :through => :order_details
end
