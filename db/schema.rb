# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_05_20_084854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.date "started_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "id_number", null: false
    t.string "sex", null: false
    t.string "cellphone_number"
    t.string "email", null: false
    t.string "utype", null: false
    t.string "line_account"
    t.string "line_name"
    t.text "buddhism_exp"
    t.text "skills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cellphone_number"], name: "index_users_on_cellphone_number"
    t.index ["first_name", "last_name"], name: "index_users_on_first_name_and_last_name"
    t.index ["id_number"], name: "index_users_on_id_number"
  end

end
