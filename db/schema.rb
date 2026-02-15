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

ActiveRecord::Schema[8.0].define(version: 2026_02_15_004328) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "interview_stages", force: :cascade do |t|
    t.bigint "job_application_id", null: false
    t.string "name"
    t.integer "order"
    t.string "status"
    t.datetime "scheduled_date"
    t.datetime "completed_date"
    t.date "follow_up_date"
    t.text "feedback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_application_id"], name: "index_interview_stages_on_job_application_id"
  end

  create_table "job_applications", force: :cascade do |t|
    t.string "company"
    t.string "position"
    t.string "status"
    t.string "location"
    t.string "salary_range"
    t.decimal "current_salary"
    t.text "skill_focus"
    t.string "applied_through"
    t.text "general_notes"
    t.text "final_outcome"
    t.string "contact_name"
    t.string "contact_email"
    t.string "contact_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_job_applications_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "interview_stages", "job_applications"
  add_foreign_key "job_applications", "users"
end
