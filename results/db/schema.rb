# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_22_001216) do

  create_table "breakfasts", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inputs", force: :cascade do |t|
    t.integer "age"
    t.string "gender"
    t.float "height"
    t.string "weight"
    t.string "float"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lunches", force: :cascade do |t|
    t.text "meal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meals", force: :cascade do |t|
    t.date "Date"
    t.text "Breakfast"
    t.integer "Breakfast_Calorie"
    t.text "Lunch"
    t.integer "Lunch_Calorie"
    t.text "Dinner"
    t.integer "Dinner_Calorie"
    t.text "Snack"
    t.integer "Snack_Calorie"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "results_of_fitness_tests", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.date "date"
    t.time "recSleepTime"
    t.decimal "bmi"
    t.integer "recCalCount"
    t.text "recFoods"
    t.time "recExerciseTime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_results_of_fitness_tests_on_user_id"
  end

end
