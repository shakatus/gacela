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

ActiveRecord::Schema.define(version: 20150906044110) do

  create_table "enterprises", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nit"
    t.string   "city"
    t.string   "departament"
    t.string   "direction"
    t.string   "phone"
    t.string   "fax"
    t.string   "web_site"
    t.string   "ciiu"
    t.string   "rep_legal"
    t.string   "date"
    t.string   "duns"
    t.string   "country"
    t.string   "nickname",                            null: false
    t.string   "slug",                                null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "enterprises", ["email"], name: "index_enterprises_on_email", unique: true
  add_index "enterprises", ["reset_password_token"], name: "index_enterprises_on_reset_password_token", unique: true
  add_index "enterprises", ["slug"], name: "index_enterprises_on_slug", unique: true

  create_table "relations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "enterprise_id"
    t.integer  "level"
    t.boolean  "check",         default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "relations", ["enterprise_id"], name: "index_relations_on_enterprise_id"
  add_index "relations", ["user_id"], name: "index_relations_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "active",                 default: true
    t.integer  "role",                   default: 0
    t.string   "name"
    t.string   "last_name"
    t.integer  "phone"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
