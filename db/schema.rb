# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_19_181143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ice_cream_orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "ice_cream_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ice_cream_id"], name: "index_ice_cream_orders_on_ice_cream_id"
    t.index ["user_id"], name: "index_ice_cream_orders_on_user_id"
  end

  create_table "ice_creams", force: :cascade do |t|
    t.string "flavor"
    t.string "size"
    t.boolean "m_and_ms"
    t.boolean "peanuts"
    t.boolean "sprinkles"
    t.boolean "hot_chocolate_fudge"
    t.integer "user_id"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ice_cream_orders", "ice_creams"
  add_foreign_key "ice_cream_orders", "users"
end
