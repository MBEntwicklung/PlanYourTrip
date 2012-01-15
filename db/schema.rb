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

ActiveRecord::Schema.define(:version => 20120115162322) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "lat"
    t.string   "lng"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["country_id"], :name => "index_cities_on_country_id"

  create_table "city_references", :force => true do |t|
    t.integer  "point_id"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "city_references", ["city_id"], :name => "index_city_references_on_city_id"
  add_index "city_references", ["point_id"], :name => "index_city_references_on_point_id"

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "lat"
    t.string   "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinations", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "lat"
    t.string   "lng"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "destinations", ["city_id"], :name => "index_destinations_on_city_id"

  create_table "points", :force => true do |t|
    t.integer  "trip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "points", ["trip_id"], :name => "index_points_on_trip_id"

  create_table "travel_type_references", :force => true do |t|
    t.integer  "point_id"
    t.integer  "travelType_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "travel_type_references", ["point_id"], :name => "index_travel_type_references_on_point_id"
  add_index "travel_type_references", ["travelType_id"], :name => "index_travel_type_references_on_travelType_id"

  create_table "travel_types", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
