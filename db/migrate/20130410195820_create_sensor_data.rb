class CreateSensorData < ActiveRecord::Migration
  def change
    create_table :sensor_data do |t|
      t.integer :sensor
      t.string :sensor_name
      t.datetime :time
      t.boolean :state

      t.timestamps
    end
  end
end
