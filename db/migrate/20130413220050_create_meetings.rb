class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer :requested_by
      t.integer :with
      t.date :date
      t.time :time
      t.boolean :response
      t.text :notes

      t.timestamps
    end
  end
end
