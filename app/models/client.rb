class Client < ApplicationRecord
	has_many :appointments
	has_many :makeup_artist, through: :appointments
	has_many :pictures
end
