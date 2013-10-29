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

ActiveRecord::Schema.define(version: 20131029181410) do

  create_table "bill_status_listings", id: false, force: true do |t|
    t.integer  "id",                           default: 0, null: false
    t.integer  "status_id"
    t.integer  "status_listing_id"
    t.datetime "status_date"
    t.string   "code",              limit: 10
    t.string   "description"
    t.string   "am_sub",            limit: 10
    t.integer  "bill_id"
  end

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
    t.integer  "house_sponsor_id"
    t.integer  "senate_sponsor_id"
    t.text     "summary",                    limit: 2147483647
  end

  create_table "bills_committees", force: true do |t|
    t.integer "bill_id"
    t.string  "code",           limit: 10
    t.integer "committee_id"
    t.string  "name"
    t.string  "committee_type", limit: 10
  end

  create_table "committees", force: true do |t|
    t.string "code",           limit: 10
    t.string "name"
    t.string "committee_type", limit: 10
  end

  create_table "contributions_industries", force: true do |t|
    t.integer "imsp_candidate_id",          null: false
    t.integer "member_id",                  null: false
    t.string  "imsp_industry_code",         null: false
    t.string  "industry_name",              null: false
    t.string  "imsp_sector_code",           null: false
    t.string  "sector_name",                null: false
    t.integer "total_contribution_records", null: false
    t.integer "total_dollars",              null: false
    t.integer "contributions_sector_id",    null: false
  end

  create_table "contributions_sectors", force: true do |t|
    t.integer "imsp_candidate_id",          null: false
    t.integer "member_id",                  null: false
    t.string  "imsp_sector_code",           null: false
    t.string  "sector_name",                null: false
    t.integer "total_contribution_records", null: false
    t.integer "total_dollars",              null: false
  end

  create_table "latest_status_dates", id: false, force: true do |t|
    t.integer  "bill_id"
    t.datetime "status_date"
  end

  create_table "member_committees", id: false, force: true do |t|
    t.integer "id",           default: 0, null: false
    t.integer "member_id"
    t.integer "committee_id"
    t.string  "role"
    t.string  "name"
  end

  create_table "member_sessions", id: false, force: true do |t|
    t.integer "member_id",  null: false
    t.integer "session_id", null: false
  end

  create_table "member_sessions_committees", id: false, force: true do |t|
    t.integer "member_id",    null: false
    t.integer "committee_id", null: false
    t.integer "session_id",   null: false
    t.integer "service_id",   null: false
    t.string  "roll",         null: false
    t.date    "date_vacated", null: false
  end

  create_table "members", id: false, force: true do |t|
    t.integer "id",                                 null: false
    t.string  "name_first"
    t.string  "name_last"
    t.string  "name_middle"
    t.string  "name_nickname",                      null: false
    t.string  "district_type",           limit: 8,  null: false
    t.string  "district_number",         limit: 3,  null: false
    t.string  "party",                   limit: 12, null: false
    t.string  "title",                              null: false
    t.string  "birthday",                           null: false
    t.string  "education",                          null: false
    t.string  "occupation",                         null: false
    t.string  "religion",                           null: false
    t.string  "spouse",                             null: false
    t.string  "cellphone",               limit: 10, null: false
    t.string  "address_city"
    t.string  "address_state",           limit: 2
    t.string  "address_street"
    t.string  "address_zip",             limit: 5
    t.string  "address_phone",           limit: 10
    t.string  "address_email"
    t.string  "district_address_city"
    t.string  "district_address_state",  limit: 2
    t.string  "district_address_street"
    t.string  "district_address_zip",    limit: 5
    t.string  "district_address_phone",  limit: 10
    t.string  "district_address_email"
    t.string  "imsp_candidate_id"
  end

  create_table "sessions", force: true do |t|
    t.string "is_default",  limit: 10, null: false
    t.string "description",            null: false
    t.string "library",                null: false
  end

  create_table "sponsorships", id: false, force: true do |t|
    t.integer "id",                 null: false
    t.string  "member_description"
    t.integer "member_id"
    t.integer "bill_id"
    t.integer "sequence"
    t.string  "sponsorship_type"
  end

  create_table "statuses", id: false, force: true do |t|
    t.integer "id"
    t.string  "code",        limit: 10
    t.string  "description"
  end

  create_table "top_contributors", force: true do |t|
    t.integer "imsp_candidate_id",                                             null: false
    t.string  "contributor_name",                                              null: false
    t.string  "business_name",                                                 null: false
    t.integer "contribution_ranking",                                          null: false
    t.integer "total_contribution_records",                                    null: false
    t.integer "total_dollars",                                                 null: false
    t.decimal "percent_of_total_contribution_records", precision: 6, scale: 1, null: false
    t.decimal "percent_of_total_total_dollars",        precision: 6, scale: 1, null: false
    t.integer "member_id",                                                     null: false
  end

  create_table "votes", id: false, force: true do |t|
    t.integer  "id",                     null: false
    t.string   "legislation", limit: 10
    t.integer  "bill_id"
    t.string   "branch",      limit: 10
    t.integer  "session_id"
    t.string   "caption"
    t.datetime "vote_date"
    t.string   "description"
    t.integer  "number"
    t.integer  "not_voting"
    t.integer  "excused"
    t.integer  "nays"
    t.integer  "yeas"
  end

  create_table "watched_bills", force: true do |t|
    t.integer  "bill_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
