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

ActiveRecord::Schema.define(version: 2020_04_17_184929) do

# Could not dump table "available_items" because of following StandardError
#   Unknown type 'available_item_unit' for column 'unit'

  create_table "shared_orders", force: :cascade do |t|
    t.string "name"
    t.integer "source_id", null: false
    t.datetime "starts"
    t.datetime "ends"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ends"], name: "index_shared_orders_on_ends"
    t.index ["name"], name: "index_shared_orders_on_name"
    t.index ["source_id"], name: "index_shared_orders_on_source_id"
    t.index ["starts"], name: "index_shared_orders_on_starts"
  end

  create_table "sources", force: :cascade do |t|
    t.string "name", null: false
    t.string "website", null: false
    t.string "address", null: false
    t.string "phone", null: false
    t.string "notes", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address"], name: "index_sources_on_address"
    t.index ["name"], name: "index_sources_on_name"
    t.index ["notes"], name: "index_sources_on_notes"
  end

  add_foreign_key "available_items", "sources"
  add_foreign_key "shared_orders", "sources"
end
