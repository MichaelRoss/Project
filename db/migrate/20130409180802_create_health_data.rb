class CreateHealthData < ActiveRecord::Migration
  def change
    create_table :health_data do |t|
      t.float :weight
      t.float :height
      t.integer :respitory_rate
      t.integer :blood_pressure
      t.integer :coughs_per_day
      t.integer :cigs_per_day

      t.timestamps
    end
  end
end
