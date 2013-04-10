class CreatePanicAlarms < ActiveRecord::Migration
  def change
    create_table :panic_alarms do |t|
      t.boolean :activated

      t.timestamps
    end
  end
end
