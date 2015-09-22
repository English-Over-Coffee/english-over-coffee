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

ActiveRecord::Schema.define(version: 20150922030637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lessons", force: :cascade do |t|
    t.datetime "lesson_datetime"
    t.string   "textbook_position"
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.integer  "location_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "lessons", ["location_id"], name: "index_lessons_on_location_id", using: :btree
  add_index "lessons", ["student_id"], name: "index_lessons_on_student_id", using: :btree
  add_index "lessons", ["teacher_id"], name: "index_lessons_on_teacher_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "homepage"
    t.string   "street_address"
    t.string   "ward"
    t.string   "prefecture"
    t.string   "city"
    t.string   "post_code"
    t.integer  "teacher_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "locations", ["teacher_id", "created_at"], name: "index_locations_on_teacher_id_and_created_at", using: :btree
  add_index "locations", ["teacher_id"], name: "index_locations_on_teacher_id", using: :btree

  create_table "phrases", force: :cascade do |t|
    t.string   "phrase"
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.integer  "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "phrases", ["lesson_id"], name: "index_phrases_on_lesson_id", using: :btree
  add_index "phrases", ["student_id"], name: "index_phrases_on_student_id", using: :btree
  add_index "phrases", ["teacher_id"], name: "index_phrases_on_teacher_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "hometown"
    t.text     "hobbies"
    t.string   "english_level"
    t.text     "special_requests"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true, using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "hometown"
    t.text     "education"
    t.text     "hobbies"
    t.text     "motto"
    t.text     "advice"
    t.text     "strengths"
    t.datetime "arrived_in_country"
    t.text     "other_languages_spoken"
    t.text     "personal_message"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "teachers", ["email"], name: "index_teachers_on_email", unique: true, using: :btree
  add_index "teachers", ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true, using: :btree

  create_table "vocabularies", force: :cascade do |t|
    t.string   "word"
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.integer  "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vocabularies", ["lesson_id"], name: "index_vocabularies_on_lesson_id", using: :btree
  add_index "vocabularies", ["student_id"], name: "index_vocabularies_on_student_id", using: :btree
  add_index "vocabularies", ["teacher_id"], name: "index_vocabularies_on_teacher_id", using: :btree

  add_foreign_key "lessons", "locations"
  add_foreign_key "lessons", "students"
  add_foreign_key "lessons", "teachers"
  add_foreign_key "locations", "teachers"
  add_foreign_key "phrases", "lessons"
  add_foreign_key "phrases", "students"
  add_foreign_key "phrases", "teachers"
  add_foreign_key "vocabularies", "lessons"
  add_foreign_key "vocabularies", "students"
  add_foreign_key "vocabularies", "teachers"
end
