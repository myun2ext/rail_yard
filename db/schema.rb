# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150804043439) do

  create_table "app_gems", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "app_gems", ["name"], name: "index_app_gems_on_name", unique: true

  create_table "app_model_columns", force: :cascade do |t|
    t.integer  "app_model_id"
    t.string   "name",                         null: false
    t.string   "type",                         null: false
    t.boolean  "allow_nil",    default: false, null: false
    t.boolean  "unique",       default: false, null: false
    t.boolean  "index",        default: false, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "app_model_columns", ["app_model_id"], name: "index_app_model_columns_on_app_model_id"

  create_table "app_models", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "app_models", ["name"], name: "index_app_models_on_name", unique: true

end
