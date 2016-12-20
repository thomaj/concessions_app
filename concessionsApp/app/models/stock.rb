class Stock < ActiveRecord::Base
  belongs_to :items
  delegate :location, to: :item 
end
