class Specialty < ApplicationRecord
	has_many :artist_specialty
	has_many :makeup_artist, through: :artist_specialty
end
