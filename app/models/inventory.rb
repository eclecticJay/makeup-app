class Inventory < ApplicationRecord
	belongs_to :makeup 
	belongs_to :makeup_artist
end
