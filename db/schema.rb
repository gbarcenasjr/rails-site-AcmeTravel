# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_04_26_180155) do
  create_table "contact_us", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "regarding"
    t.string "phone_number"
    t.string "email_address"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_us_requests", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "regarding"
    t.string "phone_number"
    t.string "email_address"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departures", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "trip_id", null: false
    t.date "departure_date"
    t.date "return_date"
    t.decimal "price", precision: 10
    t.string "difficulty_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations", id: :integer, charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "search_page"
  end

  create_table "destinations_regions", id: false, charset: "utf8mb3", force: :cascade do |t|
    t.integer "destination_id"
    t.integer "region_id"
    t.index ["destination_id"], name: "destinations_regions_des_id"
    t.index ["region_id"], name: "destinations_regions_region_id"
  end

  create_table "destinations_trips", id: false, charset: "utf8mb3", force: :cascade do |t|
    t.integer "destination_id"
    t.integer "trip_id"
    t.index ["destination_id"], name: "destinations_destination_id"
    t.index ["trip_id"], name: "destinations_trip_id"
  end

  create_table "itinerary_days", id: { type: :integer, unsigned: true }, charset: "utf8mb3", force: :cascade do |t|
    t.integer "trip_id", unsigned: true
    t.string "days", default: "", null: false
    t.string "header", default: "", null: false
    t.text "day_text", null: false
    t.integer "position"
  end

  create_table "lodgings", id: { type: :integer, unsigned: true }, charset: "utf8mb3", force: :cascade do |t|
    t.integer "trip_id", unsigned: true
    t.integer "position", unsigned: true
    t.string "name"
    t.string "location"
    t.string "level", limit: 5
    t.string "number_of_nights", limit: 20
    t.text "description"
    t.string "photo"
    t.string "photo_alt"
  end

  create_table "regions", id: :integer, charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "position"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["code"], name: "code_index"
  end

  create_table "statements", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "trip_id"
    t.integer "weight"
    t.string "header"
    t.text "content"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "trip_slides", id: :integer, charset: "utf8mb3", force: :cascade do |t|
    t.integer "trip_id"
    t.string "trip_code"
    t.integer "position"
    t.string "slide_path"
    t.string "slide_alt"
    t.string "thumb"
    t.integer "grouping", default: 0
  end

  create_table "trips", id: { type: :integer, unsigned: true }, charset: "utf8mb3", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.integer "defaultprice", default: 0, null: false
    t.string "meet"
    t.string "depart"
    t.text "terrain", null: false
    t.text "intro", null: false
    t.text "key_words", null: false
    t.string "map_image"
    t.string "large_map_image"
    t.string "large_map_alt", default: "", null: false
    t.string "main_photo_alt", default: "", null: false
    t.string "small_map_alt"
    t.string "thumbnail_photo_alt", default: "", null: false
    t.text "highlights"
    t.string "main_image"
    t.index ["defaultprice"], name: "defaultprice_index"
  end

end
