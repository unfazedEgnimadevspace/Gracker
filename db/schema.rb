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

ActiveRecord::Schema[7.0].define(version: 2023_07_08_053111) do
  create_table "calories", force: :cascade do |t|
    t.integer "user_id"
    t.string "food_name"
    t.string "meal_type"
    t.datetime "consumed_at"
    t.text "notes"
    t.integer "calories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "email"
    t.string "subject"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "body_part"
    t.string "equipment"
    t.string "gif_url"
    t.string "target"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["body_part"], name: "index_exercises_on_body_part"
    t.index ["name"], name: "index_exercises_on_name"
  end

  create_table "trainings", force: :cascade do |t|
    t.decimal "weight"
    t.integer "number_of_sets"
    t.integer "number_of_reps"
    t.datetime "exercise_time", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "exercise_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
