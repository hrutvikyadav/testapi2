class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.references :cycler, null: false, foreign_key: true
      t.string :name
      t.string :creator
      t.string :comments

      t.timestamps
    end
  end
end
