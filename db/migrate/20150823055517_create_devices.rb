class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :state
      t.text :comment
      t.integer :polling_time

      t.timestamps null: false
    end
  end
end
