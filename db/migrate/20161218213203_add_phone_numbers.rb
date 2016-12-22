class AddPhoneNumbers < ActiveRecord::Migration[5.0]
  def change
    add_column :makeup_artists, :phone, :string
    add_column :clients, :phone, :string
  end
end
