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

ActiveRecord::Schema.define(version: 20160129043138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_admins_on_user_id", using: :btree
  end

  create_table "admins_organizations", id: false, force: :cascade do |t|
    t.integer "admin_id"
    t.integer "organization_id"
    t.index ["admin_id", "organization_id"], name: "index_admins_organizations_on_admin_id_and_organization_id", unique: true, using: :btree
    t.index ["admin_id"], name: "index_admins_organizations_on_admin_id", using: :btree
    t.index ["organization_id"], name: "index_admins_organizations_on_organization_id", using: :btree
  end

  create_table "arbiters", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_arbiters_on_user_id", using: :btree
  end

  create_table "arbiters_organizations", id: false, force: :cascade do |t|
    t.integer "arbiter_id"
    t.integer "organization_id"
    t.index ["arbiter_id", "organization_id"], name: "index_arbiters_organizations_on_arbiter_id_and_organization_id", unique: true, using: :btree
    t.index ["arbiter_id"], name: "index_arbiters_organizations_on_arbiter_id", using: :btree
    t.index ["organization_id"], name: "index_arbiters_organizations_on_organization_id", using: :btree
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations_subjects", id: false, force: :cascade do |t|
    t.integer "organization_id"
    t.integer "subject_id"
    t.index ["organization_id", "subject_id"], name: "index_organizations_subjects_on_organization_id_and_subject_id", unique: true, using: :btree
    t.index ["organization_id"], name: "index_organizations_subjects_on_organization_id", using: :btree
    t.index ["subject_id"], name: "index_organizations_subjects_on_subject_id", using: :btree
  end

  create_table "organizations_superusers", id: false, force: :cascade do |t|
    t.integer "organization_id"
    t.integer "superuser_id"
    t.index ["organization_id", "superuser_id"], name: "index_org_superusers_on_org_id_and_superuser_id", unique: true, using: :btree
    t.index ["organization_id"], name: "index_organizations_superusers_on_organization_id", using: :btree
    t.index ["superuser_id"], name: "index_organizations_superusers_on_superuser_id", using: :btree
  end

  create_table "subjects", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_subjects_on_user_id", using: :btree
  end

  create_table "superusers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tokens", force: :cascade do |t|
    t.string   "value"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tokens_on_user_id", using: :btree
    t.index ["value"], name: "index_tokens_on_value", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
