class Makeup < ApplicationRecord
	has_many :inventories
	has_many :makeup_artist, through: :inventories
end
