class Appointment < ApplicationRecord
	belongs_to :client
	belongs_to :makeup_artist

  def start_time
    self.date
  end
end
