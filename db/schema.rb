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

ActiveRecord::Schema.define(version: 20150119204151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "category_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "company_name"
    t.string   "contact_name"
    t.string   "contact_title"
    t.string   "adress"
    t.string   "city"
    t.string   "region"
    t.string   "postal_code"
    t.string   "country"
    t.string   "phone"
    t.string   "fax"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true, using: :btree
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree

  create_table "employee_territories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "employee_id"
    t.integer  "territorie_id"
  end

  add_index "employee_territories", ["employee_id"], name: "index_employee_territories_on_employee_id", using: :btree
  add_index "employee_territories", ["territorie_id"], name: "index_employee_territories_on_territorie_id", using: :btree

  create_table "employees", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "title"
    t.string   "title_of_courtesy"
    t.datetime "birth_date"
    t.datetime "hire_date"
    t.string   "address"
    t.string   "city"
    t.string   "region"
    t.string   "postal_code"
    t.string   "country"
    t.string   "home_phone"
    t.string   "extension"
    t.text     "notest"
    t.integer  "reports_to"
    t.string   "photo_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_details", force: true do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.float    "discount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  add_index "order_details", ["order_id"], name: "index_order_details_on_order_id", using: :btree
  add_index "order_details", ["product_id"], name: "index_order_details_on_product_id", using: :btree

  create_table "orders", force: true do |t|
    t.datetime "order_date"
    t.datetime "required_date"
    t.datetime "shipped_date"
    t.integer  "ship_via"
    t.string   "ship_name"
    t.string   "ship_address"
    t.string   "ship_city"
    t.string   "ship_region"
    t.string   "ship_postal_code"
    t.string   "ship_country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "product_name"
    t.string   "quantity_per_unit"
    t.integer  "units_in_stock"
    t.integer  "units_on_order"
    t.integer  "reorder_level"
    t.boolean  "discontinued"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "supplier_id"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["supplier_id"], name: "index_products_on_supplier_id", using: :btree

  create_table "regions", force: true do |t|
    t.string   "region_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shippers", force: true do |t|
    t.string   "company_name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
    t.string   "company_name"
    t.string   "contact_name"
    t.string   "contact_title"
    t.string   "adress"
    t.string   "city"
    t.string   "region"
    t.string   "postal_colde"
    t.string   "country"
    t.string   "phone"
    t.string   "fax"
    t.text     "home_page"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "territories", force: true do |t|
    t.string   "territory_description"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "territories", ["region_id"], name: "index_territories_on_region_id", using: :btree

end
