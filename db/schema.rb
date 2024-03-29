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

ActiveRecord::Schema.define(version: 20170411171402) do

  create_table "procons", force: :cascade do |t|
    t.string   "name"
    t.text     "notes"
    t.string   "proarray"
    t.string   "conarray"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "procons", ["user_id"], name: "index_procons_on_user_id"

  create_table "recommendations", force: :cascade do |t|
    t.string   "tool_name"
    t.text     "description"
    t.integer  "user_id"
    t.boolean  "archived",    default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "recommendations", ["user_id"], name: "index_recommendations_on_user_id"

  create_table "tools", force: :cascade do |t|
    t.string   "name"
    t.string   "subtitle"
    t.string   "description"
    t.boolean  "less_busy",        default: false
    t.boolean  "less_stressed",    default: false
    t.boolean  "happier",          default: false
    t.boolean  "more_relaxed",     default: false
    t.boolean  "less_panicked",    default: false
    t.boolean  "more_motivated",   default: false
    t.boolean  "less_worried",     default: false
    t.boolean  "more_organized",   default: false
    t.boolean  "other",            default: false
    t.boolean  "subscribers_only", default: false
    t.string   "find_by_name"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "less_busy",              default: false
    t.boolean  "less_stressed",          default: false
    t.boolean  "happier",                default: false
    t.boolean  "more_relaxed",           default: false
    t.boolean  "less_panicked",          default: false
    t.boolean  "more_motivated",         default: false
    t.boolean  "less_worried",           default: false
    t.boolean  "more_organized",         default: false
    t.boolean  "other",                  default: false
    t.boolean  "opt_in",                 default: false
    t.boolean  "admin",                  default: false
    t.boolean  "subscriber",             default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
