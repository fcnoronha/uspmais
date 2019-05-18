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

ActiveRecord::Schema.define(version: 2019_05_16_205034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_event"
    t.string "nome"
    t.binary "foto"
    t.string "info"
    t.string "local"
    t.integer "date"
    t.integer "time"
  end

  create_table "follows", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "org_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["org_id"], name: "index_follows_on_org_id"
    t.index ["user_id"], name: "index_follows_on_user_id"
  end

  create_table "hosts", force: :cascade do |t|
    t.bigint "org_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_hosts_on_event_id"
    t.index ["org_id"], name: "index_hosts_on_org_id"
  end

  create_table "orgs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_org"
    t.string "nome"
    t.string "email"
    t.binary "foto"
    t.string "instituto"
    t.string "curso"
    t.string "info"
    t.string "link_site"
    t.string "link_fb"
    t.string "link_tt"
  end

  create_table "subscribeds", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_subscribeds_on_event_id"
    t.index ["user_id"], name: "index_subscribeds_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
    t.string "email"
    t.string "instituto"
    t.string "curso"
    t.string "info"
    t.string "link_site"
    t.string "link_fb"
    t.string "link_tt"
    t.string "password_digest"
  end

  add_foreign_key "hosts", "events"
  add_foreign_key "hosts", "orgs"
  add_foreign_key "subscribeds", "events"
  add_foreign_key "subscribeds", "users"
end
