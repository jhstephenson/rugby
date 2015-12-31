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

ActiveRecord::Schema.define(version: 20151231175924) do

  create_table "activitytypes", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.decimal  "billing_rate"
    t.string   "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "internal_id"
  end

  add_index "clients", ["internal_id"], name: "index_clients_on_internal_id"

  create_table "daily_activities", force: :cascade do |t|
    t.date     "date"
    t.integer  "client_id"
    t.integer  "user_id"
    t.decimal  "hours"
    t.string   "description"
    t.boolean  "billable"
    t.decimal  "rate"
    t.integer  "project_id"
    t.boolean  "merged"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "daily_activities", ["client_id"], name: "index_daily_activities_on_client_id"
  add_index "daily_activities", ["project_id"], name: "index_daily_activities_on_project_id"
  add_index "daily_activities", ["user_id"], name: "index_daily_activities_on_user_id"

  create_table "messages", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "client_id"
    t.string   "name"
    t.datetime "received"
    t.string   "phone"
    t.string   "cell"
    t.text     "message"
    t.boolean  "telephoned"
    t.boolean  "returned_your_call"
    t.boolean  "please_call"
    t.boolean  "will_call_again"
    t.boolean  "came_to_see_you"
    t.boolean  "wants_to_see_you"
    t.boolean  "other"
    t.text     "other_text"
    t.string   "status"
    t.string   "taken_by"
    t.datetime "resolved"
    t.string   "from"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "messages", ["client_id"], name: "index_messages_on_client_id"
  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.date     "started_on"
    t.date     "completed_on"
    t.date     "estimated_completion"
    t.decimal  "estimated_hours"
    t.decimal  "actual_hours"
    t.integer  "user_id"
    t.integer  "client_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "projects", ["client_id"], name: "index_projects_on_client_id"
  add_index "projects", ["user_id"], name: "index_projects_on_user_id"

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
