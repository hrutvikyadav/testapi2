# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_21_112119) do
  create_table "cyclers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "i_v_data", force: :cascade do |t|
    t.integer "test_id", null: false
    t.float "data_point"
    t.float "test_time_secs"
    t.float "step_time_secs"
    t.integer "cycle_index"
    t.integer "step_index"
    t.float "current_amps"
    t.float "voltage_volts"
    t.float "power_watts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id"], name: "index_i_v_data_on_test_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "test_object_id", null: false
    t.string "item_name"
    t.string "description"
    t.float "value"
    t.boolean "mandatory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_object_id"], name: "index_items_on_test_object_id"
  end

  create_table "iv_data", force: :cascade do |t|
    t.integer "test_id", null: false
    t.float "data_point"
    t.float "test_time_secs"
    t.float "step_time_secs"
    t.integer "cycle_index"
    t.integer "step_index"
    t.float "current_amps"
    t.float "voltage_volts"
    t.float "power_watts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id"], name: "index_iv_data_on_test_id"
  end

  create_table "schedule_files", force: :cascade do |t|
    t.integer "test_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id"], name: "index_schedule_files_on_test_id"
  end

  create_table "test_objects", force: :cascade do |t|
    t.integer "schedule_file_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schedule_file_id"], name: "index_test_objects_on_schedule_file_id"
  end

  create_table "tests", force: :cascade do |t|
    t.integer "cycler_id", null: false
    t.string "name"
    t.string "creator"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cycler_id"], name: "index_tests_on_cycler_id"
  end

  add_foreign_key "i_v_data", "tests"
  add_foreign_key "items", "test_objects"
  add_foreign_key "iv_data", "tests"
  add_foreign_key "schedule_files", "tests"
  add_foreign_key "test_objects", "schedule_files"
  add_foreign_key "tests", "cyclers"
end
