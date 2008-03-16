class City < ActiveRecord::Base
  belongs_to :state
  has_many :clients
  
  validates_presence_of :name
  validates_presence_of :state_id
end
