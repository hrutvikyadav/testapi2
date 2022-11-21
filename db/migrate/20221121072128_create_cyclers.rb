class CreateCyclers < ActiveRecord::Migration[7.0]
  def change
    create_table :cyclers do |t|
      t.string :name

      t.timestamps
    end
  end
end
