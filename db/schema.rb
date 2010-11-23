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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101123001553) do

  create_table "brokers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brokers_coverages", :id => false, :force => true do |t|
    t.integer "broker_id"
    t.integer "coverage_id"
  end

  create_table "carriers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", :force => true do |t|
    t.integer  "coverage_id"
    t.boolean  "multiplan",   :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coverages", :force => true do |t|
    t.integer  "plan_id"
    t.integer  "division_id"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "divisions", :force => true do |t|
    t.string   "name"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grades", :force => true do |t|
    t.integer  "contract_id"
    t.string   "type"
    t.float    "minimum"
    t.float    "maximum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "participants", :force => true do |t|
    t.string   "name"
    t.string   "ssn"
    t.integer  "division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payables", :force => true do |t|
    t.integer  "statement_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payees", :force => true do |t|
    t.integer  "broker_id"
    t.integer  "carrier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.float    "amount"
    t.string   "classification"
    t.integer  "payee_id"
    t.integer  "payable_id"
    t.integer  "transaction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", :force => true do |t|
    t.string   "name"
    t.string   "line_of_coverage"
    t.integer  "carrier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "policies", :force => true do |t|
    t.integer  "participant_id"
    t.integer  "coverage_id"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "splits", :force => true do |t|
    t.integer  "grade_id"
    t.integer  "payee_id"
    t.string   "type"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statements", :force => true do |t|
    t.integer  "broker_id"
    t.integer  "carrier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", :force => true do |t|
    t.float    "amount"
    t.string   "ssn"
    t.string   "policy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
