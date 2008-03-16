class Distributor < ActiveRecord::Base
  has_many :products
  belongs_to :city
  
  validates_presence_of :name
  validates_presence_of :city
end
