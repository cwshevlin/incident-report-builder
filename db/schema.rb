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

ActiveRecord::Schema.define(version: 20150124163030) do

  create_table "incidents", force: true do |t|
    t.integer  "creator_id"
    t.string   "date_time"
    t.string   "expectation_violated"
    t.string   "major_or_minor"
    t.text     "anecdote"
    t.string   "location"
    t.string   "context"
    t.string   "duration"
    t.text     "possible_function"
    t.text     "staff_responses"
    t.text     "effect_on_behavior"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.integer  "principal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_incidents", force: true do |t|
    t.integer  "student_id"
    t.integer  "incident_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.integer  "teacher_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
