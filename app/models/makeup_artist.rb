class MakeupArtist < ApplicationRecord
	has_secure_password
	has_many :appointments
	has_many :clients, through: :appointments 
	has_many :inventories 
	has_many :makeups, through: :inventories
	has_many :artist_specialties
	has_many :specialties, through: :artist_specialties
	has_many :pictures 
end
