class CreateTestObjects < ActiveRecord::Migration[7.0]
  def change
    create_table :test_objects do |t|
      t.references :schedule_file, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
