class CreateCigsPerDays < ActiveRecord::Migration
  def change
    create_table :cigs_per_days do |t|
      t.integer :no_of_cigs

      t.timestamps
    end

    remove_column :health_data, :cigs_per_day
  end
end
