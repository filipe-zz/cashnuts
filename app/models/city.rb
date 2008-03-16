class City < ActiveRecord::Base
  belongs_to :state
  has_many :clients
  has_many :distributors
  
  validates_presence_of :name
  validates_presence_of :state_id
end
