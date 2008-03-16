class Product < ActiveRecord::Base
  belongs_to :distributor
  belongs_to :product_category
  has_many :sales
  
  validates_presence_of :name
  validates_presence_of :price
  validates_presence_of :product_category_id
end
