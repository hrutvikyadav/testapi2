class CreateScheduleFiles < ActiveRecord::Migration[7.0]
  def change
    create_table :schedule_files do |t|
      t.references :test, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
