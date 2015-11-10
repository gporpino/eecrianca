# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151110031050) do

  create_table "accountables", force: :cascade do |t|
    t.string   "name"
    t.date     "birthdate"
    t.string   "cpf"
    t.string   "identity_number"
    t.string   "issuing"
    t.string   "phone"
    t.string   "email"
    t.string   "occupation"
    t.string   "company"
    t.string   "nationality"
    t.string   "place_of_birth"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "gender"
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "classrooms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "teacher_id"
  end

  add_index "classrooms", ["teacher_id"], name: "index_classrooms_on_teacher_id"

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "birthdate"
    t.string   "role"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.time     "first_worktime_start"
    t.time     "first_worktime_end"
    t.time     "second_worktime_start"
    t.time     "second_worktime_end"
  end

  create_table "enrollments", force: :cascade do |t|
    t.string   "school_year"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "student_id"
    t.integer  "financial_accountable_id"
    t.integer  "educational_accountable_id"
  end

  add_index "enrollments", ["educational_accountable_id"], name: "index_enrollments_on_educational_accountable_id"
  add_index "enrollments", ["financial_accountable_id"], name: "index_enrollments_on_financial_accountable_id"
  add_index "enrollments", ["student_id"], name: "index_enrollments_on_student_id"

  create_table "enrollments_services", id: false, force: :cascade do |t|
    t.integer "enrollment_id"
    t.integer "service_id"
  end

  add_index "enrollments_services", ["enrollment_id"], name: "index_enrollments_services_on_enrollment_id"
  add_index "enrollments_services", ["service_id"], name: "index_enrollments_services_on_service_id"

  create_table "grades", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.date     "birthdate"
    t.string   "breed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "gender"
  end

  create_table "units", force: :cascade do |t|
    t.integer  "year"
    t.integer  "sequence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "name"
    t.integer  "role",               default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
