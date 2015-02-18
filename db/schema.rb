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

ActiveRecord::Schema.define(version: 20150217194121) do

  create_table "allowedvalueslevels", force: :cascade do |t|
    t.string   "values"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

  create_table "institutes", force: :cascade do |t|
    t.string   "name"
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
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "futurescope"
    t.string   "bottomline"
    t.text     "notablealumnies"
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
