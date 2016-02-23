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

ActiveRecord::Schema.define(version: 20160223003207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "headshot"
    t.string   "email"
    t.string   "phone"
    t.text     "bio"
    t.string   "hair_goal"
    t.date     "last_salon_visit"
    t.string   "service"
    t.string   "allergies"
    t.string   "referred_by"
    t.text     "favorite_products"
    t.date     "birthday"
    t.string   "hobbies"
    t.string   "password_digest"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "stylists", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "speciality"
    t.string   "salon"
    t.string   "salon_address"
    t.string   "headshot"
    t.string   "email"
    t.string   "phone"
    t.string   "school"
    t.boolean  "cut"
    t.boolean  "color"
    t.boolean  "updo"
    t.boolean  "natural"
    t.string   "license"
    t.text     "bio"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
