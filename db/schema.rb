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

ActiveRecord::Schema.define(:version => 20110418101845) do

  create_table "applicants", :force => true do |t|
    t.integer  "Interview_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "photo"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.text     "domain"
    t.integer  "no_of_employee"
    t.string   "iso_standard"
    t.string   "cmmi_level"
    t.integer  "no_of_branch"
    t.string   "email"
    t.integer  "phone_no"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "longitude"
    t.float    "latitude"
  end

  create_table "interviews", :force => true do |t|
    t.integer  "mandate_id"
    t.string   "name"
    t.date     "conducting_date"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mandates", :force => true do |t|
    t.string   "designation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "conducting_date"
  end

  create_table "results", :force => true do |t|
    t.string   "status"
    t.integer  "mark"
    t.text     "notes"
    t.integer  "interview_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
