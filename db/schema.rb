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

ActiveRecord::Schema.define(version: 20140228143113) do

  create_table "assets", force: true do |t|
    t.integer  "category_id"
    t.integer  "brand_id"
    t.string   "model"
    t.string   "serialnum"
    t.text     "description"
    t.date     "purchase_date"
    t.integer  "qty"
    t.integer  "custodian_id"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barcode_assets", force: true do |t|
    t.string   "barcodenum"
    t.integer  "asset_id"
    t.date     "updatedon"
    t.integer  "assigned_by_custodian"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brands", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "custodians", force: true do |t|
    t.integer  "employee_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "code"
    t.string   "fullname"
    t.string   "emailid"
    t.string   "contactnum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
