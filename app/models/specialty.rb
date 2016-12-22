class Specialty < ApplicationRecord
	has_many :artist_specialties
	has_many :makeup_artists, through: :artist_specialties
end
