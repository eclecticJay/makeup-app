class AddToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :date, :date
    remove_column :appointments, :time, :string
    add_column :appointments, :time, :time
  end
end
