class ChangeTextToString < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :text, :text
     add_column :messages, :text, :string
  end
end
