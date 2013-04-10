class CreateSwDiaries < ActiveRecord::Migration
  def change
    create_table :sw_diaries do |t|
      t.text :diary

      t.timestamps
    end
  end
end
