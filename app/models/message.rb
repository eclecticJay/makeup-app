class Message < ApplicationRecord
  belongs_to :client
  belongs_to :makeup_artist
end
