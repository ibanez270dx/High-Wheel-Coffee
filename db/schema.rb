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

ActiveRecord::Schema.define(:version => 20121012064350) do

  create_table "admins", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "coffees", :force => true do |t|
    t.string   "name"
    t.string   "growing_region"
    t.string   "cultivar"
    t.string   "processing"
    t.text     "flavor_profile"
    t.string   "primary_photo_file_name"
    t.integer  "primary_photo_file_size"
    t.string   "primary_photo_content_type"
    t.datetime "primary_photo_updated_at"
    t.string   "secondary_photo_file_name"
    t.integer  "secondary_photo_file_size"
    t.string   "secondary_photo_content_type"
    t.datetime "secondary_photo_updated_at"
    t.boolean  "featured"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "url_name"
  end

end
