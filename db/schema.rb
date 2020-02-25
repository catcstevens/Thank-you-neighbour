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

ActiveRecord::Schema.define(version: 2020_02_25_014518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "question_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "borrowers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "from"
    t.date "to"
    t.integer "price"
    t.integer "deposit"
    t.text "delivery"
    t.integer "min_rental"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neighbours", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.bigint "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "rating_id"
    t.bigint "review_id"
    t.index ["listing_id"], name: "index_neighbours_on_listing_id"
    t.index ["rating_id"], name: "index_neighbours_on_rating_id"
    t.index ["review_id"], name: "index_neighbours_on_review_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "url"
    t.string "caption"
    t.bigint "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_photos_on_listing_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "listing_id"
    t.bigint "borrower_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["borrower_id"], name: "index_questions_on_borrower_id"
    t.index ["listing_id"], name: "index_questions_on_listing_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "neighbour_id"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighbour_id"], name: "index_ratings_on_neighbour_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "neighbour_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighbour_id"], name: "index_reviews_on_neighbour_id"
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "neighbours", "listings"
  add_foreign_key "neighbours", "ratings"
  add_foreign_key "neighbours", "reviews"
  add_foreign_key "photos", "listings"
  add_foreign_key "questions", "borrowers"
  add_foreign_key "questions", "listings"
  add_foreign_key "ratings", "neighbours"
  add_foreign_key "reviews", "neighbours"
end
