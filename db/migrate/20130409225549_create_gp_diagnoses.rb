class CreateGpDiagnoses < ActiveRecord::Migration
  def change
    create_table :gp_diagnoses do |t|
      t.text :diagnosis

      t.timestamps
    end
  end
end
