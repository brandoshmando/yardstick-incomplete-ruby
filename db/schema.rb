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

ActiveRecord::Schema.define(version: 20160228201352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "admins", ["organization_id", "user_id"], name: "index_admins_on_organization_id_and_user_id", unique: true, using: :btree
  add_index "admins", ["organization_id"], name: "index_admins_on_organization_id", using: :btree
  add_index "admins", ["user_id"], name: "index_admins_on_user_id", using: :btree

  create_table "arbiters", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "arbiters", ["organization_id", "user_id"], name: "index_arbiters_on_organization_id_and_user_id", unique: true, using: :btree
  add_index "arbiters", ["organization_id"], name: "index_arbiters_on_organization_id", using: :btree
  add_index "arbiters", ["user_id"], name: "index_arbiters_on_user_id", using: :btree

  create_table "managers", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "managers", ["organization_id", "user_id"], name: "index_managers_on_organization_id_and_user_id", unique: true, using: :btree
  add_index "managers", ["organization_id"], name: "index_managers_on_organization_id", using: :btree
  add_index "managers", ["user_id"], name: "index_managers_on_user_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "user_id"
    t.string   "unique_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "subjects", ["organization_id", "user_id"], name: "index_subjects_on_organization_id_and_user_id", unique: true, using: :btree
  add_index "subjects", ["organization_id"], name: "index_subjects_on_organization_id", using: :btree
  add_index "subjects", ["unique_id"], name: "index_subjects_on_unique_id", using: :btree
  add_index "subjects", ["user_id"], name: "index_subjects_on_user_id", using: :btree

  create_table "tokens", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tokens", ["user_id"], name: "index_tokens_on_user_id", using: :btree
  add_index "tokens", ["value"], name: "index_tokens_on_value", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

end
