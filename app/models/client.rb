class Client < ActiveRecord::Base
  belongs_to :city
  
  validates_length_of :name, :maximum => 100
  validates_presence_of :city_id
end
