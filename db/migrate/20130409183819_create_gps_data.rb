class CreateGpsData < ActiveRecord::Migration
  def change
    create_table :gps_data do |t|
      t.datetime :time
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
