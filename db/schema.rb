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

ActiveRecord::Schema[7.0].define(version: 2022_09_09_080732) do
  create_table "details", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "type_id", null: false
    t.string "name"
    t.string "socket"
    t.string "dimm"
    t.string "ssd"
    t.string "hdd"
    t.string "form"
    t.integer "size"
    t.integer "capacity"
    t.integer "wattage"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status"
    t.string "img"
    t.index ["type_id"], name: "index_details_on_type_id"
  end

  create_table "pre_builds", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "purpose_id", null: false
    t.bigint "price_range_id", null: false
    t.string "cpu"
    t.string "cooler"
    t.string "main"
    t.string "ram"
    t.string "ssd"
    t.string "hdd"
    t.string "gpu"
    t.string "psw"
    t.string "case"
    t.integer "price"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["price_range_id"], name: "index_pre_builds_on_price_range_id"
    t.index ["purpose_id"], name: "index_pre_builds_on_purpose_id"
  end

  create_table "price_ranges", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "price"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "operator", limit: 5
  end

  create_table "purposes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "details", "types"
  add_foreign_key "pre_builds", "price_ranges"
  add_foreign_key "pre_builds", "purposes"
end
