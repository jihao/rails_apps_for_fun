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

ActiveRecord::Schema.define(:version => 20110827074948) do

  create_table "people", :force => true do |t|
    t.string   "first_name", :null => false
    t.string   "last_name",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "income"
  end

  create_table "projects", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.integer  "person_id",                 :null => false
    t.integer  "project_id",                :null => false
    t.integer  "status_id",  :default => 1, :null => false
    t.string   "title",                     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "title",      :null => false
    t.integer  "position",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
