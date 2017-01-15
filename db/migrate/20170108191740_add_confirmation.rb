class AddConfirmation < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :confirmation, :string
  end
end
