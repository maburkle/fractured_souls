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

ActiveRecord::Schema.define(version: 20150423003212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "gender"
    t.integer  "age"
    t.integer  "speed"
    t.integer  "maximum_carry_weight"
    t.integer  "current_carry_weight"
    t.integer  "burden_weight"
    t.integer  "maximum_hit_points"
    t.integer  "current_hit_points"
    t.integer  "soul_points"
    t.text     "appearence"
    t.text     "background"
    t.integer  "morality"
    t.integer  "humanity"
    t.decimal  "money"
    t.integer  "user_id"
    t.integer  "race_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "speed"
    t.integer  "focus"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "hit_points"
  end

  create_table "racial_skills", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "race_id"
    t.boolean  "bonus?"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "classification"
  end

  create_table "spells", force: :cascade do |t|
    t.string  "name"
    t.integer "castable_id"
    t.string  "castable_type"
    t.text    "flavor_text"
    t.integer "range"
    t.string  "target"
    t.integer "focus_cost"
    t.string  "action"
    t.string  "damage"
    t.string  "effect"
    t.string  "critical_effect"
    t.string  "great_effect"
    t.string  "good_effect"
    t.text    "special"
    t.text    "prereq"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "weapon_classifications", force: :cascade do |t|
    t.string "name"
  end

  create_table "weapons", force: :cascade do |t|
    t.string   "name"
    t.integer  "range"
    t.integer  "power"
    t.integer  "power_modifier"
    t.integer  "soul_rune_slots"
    t.decimal  "weight"
    t.decimal  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "weapon_classification_id"
  end

end
