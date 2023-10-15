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

ActiveRecord::Schema[7.0].define(version: 2023_10_15_004653) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "paid_up_id"
    t.index ["paid_up_id"], name: "index_groups_on_paid_up_id"
    t.index ["user_id"], name: "index_groups_on_user_id"
  end

  create_table "paid_ups", force: :cascade do |t|
    t.string "name"
    t.integer "amount", default: 0
    t.bigint "author_id", null: false
    t.bigint "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_paid_ups_on_author_id"
    t.index ["group_id"], name: "index_paid_ups_on_group_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "groups", "paid_ups"
  add_foreign_key "groups", "users"
  add_foreign_key "paid_ups", "groups"
  add_foreign_key "paid_ups", "users", column: "author_id"
end