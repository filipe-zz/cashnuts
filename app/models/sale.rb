class Sale < ActiveRecord::Base
  belongs_to :product
  belongs_to :client
  
  validates_presence_of :client_id
  validates_presence_of :product_id
  validates_presence_of :date
  validates_presence_of :price
  validates_presence_of :quantity
  
  def total_price
    if !price.nil? && !quantity.nil?
      price*quantity
    else
      0
    end
  end
end
