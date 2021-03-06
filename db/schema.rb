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

ActiveRecord::Schema.define(:version => 20130515112300) do

  create_table "equipment_lists", :force => true do |t|
    t.integer "equipment_id"
    t.integer "photo_shoot_id"
  end

  create_table "equipment_types", :force => true do |t|
    t.string "name"
  end

  create_table "equipments", :force => true do |t|
    t.string  "name"
    t.string  "serial"
    t.integer "type_id"
  end

  create_table "photo_shoots", :force => true do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "email"
    t.string "date"
    t.string "time"
  end

  create_table "projects", :force => true do |t|
    t.string "name"
  end

end
