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

ActiveRecord::Schema.define(version: 20131120160421) do

  create_table "bills", id: false, force: true do |t|
    t.integer  "id",                                            null: false
    t.string   "document_type",              limit: 3
    t.integer  "number"
    t.integer  "session_id"
    t.integer  "act_veto_number"
    t.string   "caption"
    t.integer  "latest_version_id"
    t.string   "latest_version_description"
    t.string   "latest_version_url"
    t.string   "legislation_type",           limit: 5
    t.integer  "status_id"
    t.datetime "status_date"
    t.string   "status_description"
    t.string   "suffix"
    t.text     "footnotes",                  limit: 2147483647
    t.integer  "member_id"
    t.integer  "house_sponsor_id"
    t.integer  "senate_sponsor_id"
    t.text     "summary",                    limit: 2147483647
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "watched_bill_categories", force: true do |t|
    t.integer  "watched_bill_id"
    t.integer  "bill_id"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "watched_bills", force: true do |t|
    t.integer  "bill_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
