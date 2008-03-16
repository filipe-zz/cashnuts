class State < ActiveRecord::Base
  validates_presence_of :name
  
  validates_length_of :abbreviation, :is => 2
end
