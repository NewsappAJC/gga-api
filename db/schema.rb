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

ActiveRecord::Schema.define(version: 20141107200524) do

  create_table "batting_averages", id: false, force: true do |t|
    t.integer "id",                                               default: 0, null: false
    t.integer "bills",         limit: 8,                          default: 0, null: false
    t.decimal "passed_house",            precision: 23, scale: 0
    t.decimal "passed_senate",           precision: 23, scale: 0
    t.decimal "sent_to_gov",             precision: 23, scale: 0
    t.decimal "signed_by_gov",           precision: 23, scale: 0
    t.decimal "vetoed",                  precision: 23, scale: 0
  end

  create_table "bill_attributes", id: false, force: true do |t|
    t.integer  "id",                                                          null: false
    t.integer  "session_id"
    t.string   "document_type",                        limit: 3
    t.integer  "number"
    t.string   "summary_homestead",                    limit: 1, default: "", null: false
    t.string   "summary_amend_act",                    limit: 1, default: "", null: false
    t.string   "summary_amend_title",                  limit: 1, default: "", null: false
    t.string   "summary_amend_chapter",                limit: 1, default: "", null: false
    t.string   "summary_amend_article",                limit: 1, default: "", null: false
    t.string   "summary_amend_code",                   limit: 1, default: "", null: false
    t.string   "summary_amend_part",                   limit: 1, default: "", null: false
    t.string   "summary_amend_any",                    limit: 1, default: "", null: false
    t.integer  "summary_new_charter",                            default: 0,  null: false
    t.integer  "summary_to_authorize",                           default: 0,  null: false
    t.integer  "summary_tax",                                    default: 0,  null: false
    t.integer  "summary_county",                                 default: 0,  null: false
    t.integer  "summary_county_names",                           default: 0,  null: false
    t.integer  "summary_city",                                   default: 0,  null: false
    t.integer  "summary_city_of",                                default: 0,  null: false
    t.integer  "summary_regulate",                               default: 0,  null: false
    t.integer  "summary_office",                                 default: 0,  null: false
    t.integer  "summary_election",                               default: 0,  null: false
    t.integer  "summary_health",                                 default: 0,  null: false
    t.integer  "summary_social",                                 default: 0,  null: false
    t.integer  "passed",                                         default: 0,  null: false
    t.integer  "out_committee",                                  default: 0,  null: false
    t.datetime "max_action_date"
    t.datetime "min_action_date"
    t.integer  "author_party"
    t.integer  "majority_party"
    t.integer  "majority_party_house"
    t.integer  "majority_party_senate"
    t.integer  "gov_party"
    t.integer  "chamber_leader_sponsor"
    t.integer  "chamber_leader_author"
    t.integer  "leadership_author_republican"
    t.integer  "leadership_sponsors_republican"
    t.integer  "leadership_author_democrat"
    t.integer  "leadership_sponsors_democrat"
    t.integer  "other_sponsors_democrat"
    t.integer  "other_sponsors_republican"
    t.integer  "other_minority_sponsors"
    t.integer  "other_majority_sponsors"
    t.integer  "floor_leader_author"
    t.integer  "floor_leader_sponsors"
    t.integer  "other_leadership_sponsors_republican"
    t.integer  "other_leadership_sponsors_democrat"
    t.integer  "other_majority_leadership_sponsors"
    t.integer  "other_minority_leadership_sponsors"
    t.integer  "majority_leadership_author"
    t.integer  "majority_leadership_sponsors"
    t.integer  "minority_leadership_author"
    t.integer  "minority_leadership_sponsors"
    t.integer  "majority_sponsors"
    t.integer  "minority_sponsors"
    t.integer  "sponsors"
    t.integer  "sponsors_republican"
    t.integer  "sponsors_democrat"
    t.integer  "sponsors_house"
    t.integer  "sponsors_senate"
    t.integer  "author_independent"
    t.integer  "sponsors_independent"
    t.integer  "majority_party_author"
    t.integer  "gov_election_year"
    t.integer  "leg_election_year"
    t.integer  "days_from_may_submitted"
    t.integer  "days_from_may_out_committee"
    t.integer  "gov_reelection_year"
    t.integer  "leg_year_submitted"
    t.float    "majority_edge_percent_house"
    t.float    "majority_edge_percent_senate"
    t.integer  "majority_edge_house"
    t.integer  "majority_edge_senate"
    t.integer  "majority_edge"
    t.integer  "majority_edge_percent"
    t.integer  "majority_members_house"
    t.integer  "majority_members_senate"
    t.integer  "minority_members_house"
    t.integer  "minority_members_senate"
    t.date     "out_committee_date"
    t.integer  "single_party_rule"
    t.integer  "bi_partisan_sponsorship"
    t.integer  "movement_second_year"
    t.date     "house_date_passed"
    t.date     "senate_date_passed"
    t.integer  "rules_chair_author"
    t.integer  "rules_chair_sponsor"
    t.integer  "minority_leader_sponsor"
    t.integer  "minority_leader_author"
    t.integer  "democrat_chairman_sponsors"
    t.integer  "republican_chairman_sponsors"
    t.integer  "independent_chairman_sponsors"
    t.integer  "majority_chairman_sponsors"
    t.integer  "minority_chairman_sponsors"
    t.integer  "democrat_chairman_author"
    t.integer  "republican_chairman_author"
    t.integer  "independent_chairman_author"
    t.integer  "majority_chairman_author"
    t.integer  "minority_chairman_author"
  end

  create_table "bill_counts", id: false, force: true do |t|
    t.integer "id",                                               default: 0, null: false
    t.integer "bills",         limit: 8,                          default: 0, null: false
    t.decimal "passed_house",            precision: 23, scale: 0
    t.decimal "passed_senate",           precision: 23, scale: 0
    t.decimal "sent_to_gov",             precision: 23, scale: 0
    t.decimal "signed_by_gov",           precision: 23, scale: 0
    t.decimal "vetoed",                  precision: 23, scale: 0
  end

  create_table "bill_status_listings", force: true do |t|
    t.integer  "status_id"
    t.integer  "status_listing_id"
    t.datetime "status_date"
    t.string   "code",              limit: 10
    t.string   "description"
    t.string   "am_sub",            limit: 25
    t.integer  "bill_id"
    t.string   "document_type",     limit: 10
    t.integer  "number"
    t.string   "caption"
  end

  add_index "bill_status_listings", ["bill_id"], name: "bill_id", using: :btree
  add_index "bill_status_listings", ["status_id", "bill_id"], name: "bill_status", using: :btree
  add_index "bill_status_listings", ["status_listing_id", "bill_id"], name: "bill_status_listing", using: :btree

  create_table "bills", force: true do |t|
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
    t.integer  "member_id"
    t.text     "summary",                    limit: 2147483647
    t.integer  "bill_passed",                limit: 1
    t.float    "predictions"
    t.integer  "passed_over",                limit: 1,          default: 0
  end

  create_table "bills_votes", id: false, force: true do |t|
    t.integer "bill_id", null: false
    t.integer "vote_id", null: false
  end

  create_table "committees", id: false, force: true do |t|
    t.integer "id",                                null: false
    t.string  "code",           limit: 12
    t.string  "name"
    t.text    "description",    limit: 2147483647
    t.string  "committee_type", limit: 10
    t.integer "session_id"
  end

  create_table "contributions_industries", id: false, force: true do |t|
    t.integer "id",                         default: 0, null: false
    t.integer "imsp_candidate_id",                      null: false
    t.integer "member_id",                              null: false
    t.string  "imsp_industry_code",                     null: false
    t.string  "industry_name",                          null: false
    t.string  "imsp_sector_code",                       null: false
    t.string  "sector_name",                            null: false
    t.integer "total_contribution_records",             null: false
    t.integer "total_dollars",                          null: false
    t.integer "contributions_sector_id",                null: false
  end

  create_table "contributions_sectors", id: false, force: true do |t|
    t.integer "id",                         default: 0, null: false
    t.integer "imsp_candidate_id",                      null: false
    t.integer "member_id",                              null: false
    t.string  "imsp_sector_code",                       null: false
    t.string  "sector_name",                            null: false
    t.integer "total_contribution_records",             null: false
    t.integer "total_dollars",                          null: false
  end

  create_table "days_left", id: false, force: true do |t|
    t.integer "id",                  default: 0, null: false
    t.integer "days_left", limit: 8
  end

  create_table "house_mds", id: false, force: true do |t|
    t.text  "row_names"
    t.float "X1"
    t.float "X2"
  end

