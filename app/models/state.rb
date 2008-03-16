class State < ActiveRecord::Base
  has_many :cities
  
  validates_presence_of :name
  validates_length_of :abbreviation, :is => 2
end
