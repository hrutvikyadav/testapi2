class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :test_object, null: false, foreign_key: true
      t.string :item_name
      t.string :description
      t.float :value
      t.boolean :mandatory

      t.timestamps
    end
  end
end
