class Client < ApplicationRecord
	has_secure_password
	has_many :appointments
	has_many :makeup_artists, through: :appointments
	has_many :pictures
end
