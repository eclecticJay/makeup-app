class CreateMakeups < ActiveRecord::Migration[5.0]
  def change
    create_table :makeups do |t|
      t.string :makeup_items
      t.string :makeup_tools

      t.timestamps
    end
  end
end
