# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130627044128) do

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.string   "number"
    t.integer  "duration",      :limit => 10, :precision => 10, :scale => 0
    t.integer  "price",         :limit => 10, :precision => 10, :scale => 0
    t.string   "outline"
    t.integer  "discount_id"
    t.string   "provider"
    t.integer  "technology_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "discounts", :force => true do |t|
    t.string   "discount_level"
    t.float    "percentage"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scheduled_classes", :force => true do |t|
    t.integer  "course_id"
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "location"
    t.string   "instructor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technologies", :force => true do |t|
    t.string   "tech"
    t.string   "version"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
