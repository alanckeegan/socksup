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

ActiveRecord::Schema.define(version: 2018_12_12_121116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "address"
    t.string "photo"
    t.string "contact"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "employer_id"
    t.bigint "quiz_id"
    t.text "description"
    t.string "title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "hours_per_week"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.integer "pay_per_hour"
    t.index ["employer_id"], name: "index_listings_on_employer_id"
    t.index ["quiz_id"], name: "index_listings_on_quiz_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "submission_id"
    t.index ["submission_id"], name: "index_messages_on_submission_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "quiz_id"
    t.text "question"
    t.string "question_type"
    t.string "correct_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "wrong_answers", default: [], array: true
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responses", force: :cascade do |t|
    t.bigint "question_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "submission_id"
    t.index ["question_id"], name: "index_responses_on_question_id"
    t.index ["submission_id"], name: "index_responses_on_submission_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "listing_id"
    t.boolean "submitted"
    t.boolean "confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_submissions_on_listing_id"
    t.index ["user_id"], name: "index_submissions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.bigint "employer_id"
    t.string "photo"
    t.datetime "date_of_birth"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["employer_id"], name: "index_users_on_employer_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "listings", "employers"
  add_foreign_key "listings", "quizzes"
  add_foreign_key "messages", "submissions"
  add_foreign_key "messages", "users"
  add_foreign_key "questions", "quizzes"
  add_foreign_key "responses", "questions"
  add_foreign_key "responses", "submissions"
  add_foreign_key "submissions", "listings"
  add_foreign_key "submissions", "users"
  add_foreign_key "users", "employers"
end
