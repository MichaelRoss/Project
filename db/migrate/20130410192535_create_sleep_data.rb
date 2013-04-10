class CreateSleepData < ActiveRecord::Migration
  def change
    create_table :sleep_data do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :sleepquality
      t.float :timeinbed
      t.string :mood
      t.string :notes

      t.timestamps
    end
  end
end
