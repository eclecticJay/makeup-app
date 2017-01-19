class AddConfirmationToMessage < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :confirmation, :string
  end
end
