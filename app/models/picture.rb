class Picture < ApplicationRecord
	belongs_to :makeup_artist
	belongs_to :clients 
end
