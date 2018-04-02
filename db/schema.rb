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

ActiveRecord::Schema.define(version: 20180401233211) do

  create_table "runway_models", force: :cascade do |t|
    t.string "name"
    t.string "mantra"
    t.string "photo_url"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_runway_models_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vote_runway_models", force: :cascade do |t|
    t.integer "vote_id"
    t.integer "runway_model_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["runway_model_id"], name: "index_vote_runway_models_on_runway_model_id"
    t.index ["vote_id"], name: "index_vote_runway_models_on_vote_id"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

end
