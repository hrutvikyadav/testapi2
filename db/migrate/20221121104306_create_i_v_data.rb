class CreateIVData < ActiveRecord::Migration[7.0]
  def change
    create_table :i_v_data do |t|
      t.references :test, null: false, foreign_key: true
      t.float :data_point
      t.float :test_time_secs
      t.float :step_time_secs
      t.integer :cycle_index
      t.integer :step_index
      t.float :current_amps
      t.float :voltage_volts
      t.float :power_watts

      t.timestamps
    end
  end
end
