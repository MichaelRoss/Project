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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130411133724) do

  create_table "cigs_per_day", :force => true do |t|
    t.integer  "no_of_cigs"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cigs_per_days", :force => true do |t|
    t.integer  "no_of_cigs"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gp_diagnoses", :force => true do |t|
    t.text     "diagnosis"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gps_data", :force => true do |t|
    t.datetime "time"
    t.float    "lat"
    t.float    "lng"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "health_data", :force => true do |t|
    t.float    "weight"
    t.float    "height"
    t.integer  "respitory_rate"
    t.integer  "blood_pressure"
    t.integer  "coughs_per_day"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "panic_alarms", :force => true do |t|
    t.boolean  "activated"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rights", :force => true do |t|
    t.string "name"
    t.string "controller"
    t.string "action"
  end

  create_table "rights_roles", :id => false, :force => true do |t|
    t.integer "right_id"
    t.integer "role_id"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "sensor_data", :force => true do |t|
    t.integer  "sensor"
    t.string   "sensor_name"
    t.datetime "time"
    t.boolean  "state"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sleep_data", :force => true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "sleepquality"
    t.float    "timeinbed"
    t.string   "mood"
    t.string   "notes"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "sw_diaries", :force => true do |t|
    t.text     "diary"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
