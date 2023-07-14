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

ActiveRecord::Schema[7.0].define(version: 2023_07_14_161329) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_types", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accounts", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.bigint "account_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_type_id"], name: "index_accounts_on_account_type_id"
    t.index ["code"], name: "index_accounts_on_code", unique: true
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supports", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "ammount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vouchers", force: :cascade do |t|
    t.string "narration"
    t.bigint "support_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "debit_id"
    t.bigint "credit_id"
    t.bigint "prepared_id"
    t.bigint "authorized_id"
    t.index ["authorized_id"], name: "index_vouchers_on_authorized_id"
    t.index ["credit_id"], name: "index_vouchers_on_credit_id"
    t.index ["debit_id"], name: "index_vouchers_on_debit_id"
    t.index ["prepared_id"], name: "index_vouchers_on_prepared_id"
    t.index ["support_id"], name: "index_vouchers_on_support_id"
  end

  add_foreign_key "accounts", "account_types"
  add_foreign_key "vouchers", "accounts", column: "credit_id"
  add_foreign_key "vouchers", "accounts", column: "debit_id"
  add_foreign_key "vouchers", "employees", column: "authorized_id"
  add_foreign_key "vouchers", "employees", column: "prepared_id"
  add_foreign_key "vouchers", "supports"
end
