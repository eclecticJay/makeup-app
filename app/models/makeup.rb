class Makeup < ApplicationRecord
	has_many :inventories
	has_many :makeup_artists, through: :inventories
end
