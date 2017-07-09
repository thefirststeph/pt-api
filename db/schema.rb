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

ActiveRecord::Schema.define(version: 20170709035916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "client_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_ethnicities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "target_issues", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "therapist_client_categories", id: false, force: :cascade do |t|
    t.integer "therapist_id"
    t.integer "client_category_id"
  end

  create_table "therapist_client_ethnicities", id: false, force: :cascade do |t|
    t.integer "therapist_id"
    t.integer "client_ethnicity_id"
  end

  create_table "therapist_client_languages", id: false, force: :cascade do |t|
    t.integer "therapist_id"
    t.integer "client_language_id"
  end

  create_table "therapist_issues", id: false, force: :cascade do |t|
    t.integer "therapist_id"
    t.integer "issue_id"
  end

  create_table "therapist_target_issues", id: false, force: :cascade do |t|
    t.integer "therapist_id"
    t.integer "target_issue_id"
  end

  create_table "therapists", force: :cascade do |t|
    t.string   "pt_id"
    t.string   "name"
    t.string   "title"
    t.string   "phone"
    t.string   "street_address"
    t.string   "locality"
    t.string   "state"
    t.string   "zipcode"
    t.string   "blurb"
    t.integer  "yrs_practice"
    t.string   "school"
    t.integer  "yr_graduated"
    t.string   "license_no"
    t.string   "license_state"
    t.string   "client_ages"
    t.string   "treatment_modalities"
    t.string   "treatment_orientation"
    t.string   "avg_cost"
    t.string   "sliding_scale"
    t.string   "takes_insurance"
    t.string   "accepted_insurance"
    t.string   "accepted_payments"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
