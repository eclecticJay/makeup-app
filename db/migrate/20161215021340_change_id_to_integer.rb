class ChangeIdToInteger < ActiveRecord::Migration[5.0]
  def change
  	remove_column :appointments, :client_id, :string
  	remove_column :appointments, :makeup_artist_id, :string
  	remove_column :artist_specialties, :makeup_artist_id, :string
  	remove_column :artist_specialties, :specialty_id, :string
  	remove_column :inventories, :makeup_id, :string
  	remove_column :inventories, :makeup_artist_id, :string
  	remove_column :pictures, :makeup_artist_id, :string
  	remove_column :pictures, :client_id, :string

 		add_column :appointments, :client_id, :integer
  	add_column :appointments, :makeup_artist_id, :integer
  	add_column :artist_specialties, :makeup_artist_id, :integer
  	add_column :artist_specialties, :specialty_id, :integer
  	add_column :inventories, :makeup_id, :integer
  	add_column :inventories, :makeup_artist_id, :integer
  	add_column :pictures, :makeup_artist_id, :integer
  	add_column :pictures, :client_id, :integer
  end
end
