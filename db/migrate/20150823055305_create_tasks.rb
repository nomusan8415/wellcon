class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :device_id
      t.string :name
      t.datetime :start_time
      t.datetime :stop_time
      t.text :comment

      t.timestamps null: false
    end
  end
end
