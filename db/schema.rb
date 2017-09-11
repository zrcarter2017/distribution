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

ActiveRecord::Schema.define(version: 20170908181203) do

  create_table "catalysts", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "investor_id"
    t.string "name_1"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "email"
    t.string "phone"
    t.string "cash_invested"
    t.string "facevalue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_investor_id"
    t.string "encrypted_investor_id_iv"
    t.string "status"
  end

  create_table "consumers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graphs", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "id_investor"
    t.string "name_1"
    t.string "name_2"
    t.string "address"
    t.string "suite_num"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "email"
    t.string "selected_projid"
    t.string "tic_llc_num"
    t.string "spe"
    t.string "state_res"
    t.string "close_date"
    t.string "own_pcnt"
    t.string "contact_name_1"
    t.string "contact_name_2"
    t.string "primary_phone"
    t.string "cell_phone"
    t.string "alt_phone"
    t.string "fax"
    t.string "secondary_address"
    t.string "secondary_email"
    t.string "equity"
    t.string "rep"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_id_investor"
    t.string "encrypted_id_investor_iv"
    t.string "status"
  end

  create_table "schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "property"
    t.string "proj_id"
    t.boolean "distributing"
    t.float "January", limit: 24
    t.float "February", limit: 24
    t.float "March", limit: 24
    t.float "April", limit: 24
    t.float "May", limit: 24
    t.float "June", limit: 24
    t.float "July", limit: 24
    t.float "August", limit: 24
    t.float "September", limit: 24
    t.float "October", limit: 24
    t.float "November", limit: 24
    t.float "December", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "DistSum", limit: 24
    t.float "equity", limit: 24
    t.string "ROI"
  end

  create_table "users", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
  end

end
