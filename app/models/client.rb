class Client < ApplicationRecord
	has_secure_password
	has_many :appointments
	has_many :makeup_artists, through: :appointments
	has_many :pictures
    def full_name
      first_name + ' ' + last_name
    end
end

