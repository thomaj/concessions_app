class Location < ActiveRecord::Base
  has_and_belongs_to_many :items
  has_many :stocks, :through => :items
end
