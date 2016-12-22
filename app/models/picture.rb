class Picture < ApplicationRecord
	belongs_to :makeup_artist
	belongs_to :client 
end
