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

ActiveRecord::Schema.define(version: 20150317200301) do

  create_table "allowedvalueslevels", force: :cascade do |t|
    t.string   "values"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coursereviews", force: :cascade do |t|
    t.text     "body"
    t.text     "alumni"
    t.string   "coursename"
    t.integer  "user_id"
    t.string   "institutehandler_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "handlers", force: :cascade do |t|
    t.string   "level"
    t.string   "course"
    t.boolean  "activation"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "stream"
    t.string   "uniquenesscheck"
    t.integer  "institutehandler_id"
    t.text     "eligibility"
    t.string   "duration"
    t.text     "commencement"
    t.string   "averagefees"
    t.string   "averagebatchstrength"
    t.text     "descintroduction"
    t.text     "desccurriculum"
    t.text     "descfuturescope"
    t.text     "descinfra"
    t.text     "descnotableprofessors"
    t.text     "descinternships"
    t.text     "descplacements"
    t.text     "admission"
  end

  create_table "institutehandlers", force: :cascade do |t|
    t.string   "name"
    t.string   "affiliation"
    t.integer  "Established"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.text     "address"
    t.text     "descintroduction"
    t.text     "descacademics"
    t.text     "descinfra"
    t.text     "desceaa"
    t.text     "descnotablesuccess"
    t.string   "descmotto"
    t.text     "desccampus"
    t.decimal  "latitute"
    t.decimal  "longitude"
    t.string   "accomodation"
    t.string   "website"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "institutetype"
    t.string   "slug"
  end

  create_table "institutes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutetagattributions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "institutetagging_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "institutetagattributions", ["institutetagging_id"], name: "index_institutetagattributions_on_institutetagging_id"
  add_index "institutetagattributions", ["user_id"], name: "index_institutetagattributions_on_user_id"

  create_table "institutetaggings", force: :cascade do |t|
    t.integer  "institutehandler_id"
    t.integer  "institutetag_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "institutetaggings", ["institutehandler_id"], name: "index_institutetaggings_on_institutehandler_id"
  add_index "institutetaggings", ["institutetag_id"], name: "index_institutetaggings_on_institutetag_id"

  create_table "institutetags", force: :cascade do |t|
    t.string   "tagname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tagattributions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tagging_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "handler_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "tagname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testreviews", force: :cascade do |t|
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string   "test1"
    t.integer  "test2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "textreviews", force: :cascade do |t|
    t.text     "body"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "notablealumnies"
    t.integer  "user_id"
    t.integer  "institutehandler_id"
    t.string   "coursename"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
