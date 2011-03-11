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

ActiveRecord::Schema.define(:version => 20110311160908) do

  create_table "categories", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.string   "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.integer  "customer_id"
    t.string   "name"
    t.string   "surname"
    t.integer  "cell_no"
    t.text     "address"
    t.date     "dob"
    t.integer  "alternate_no"
    t.string   "username"
    t.string   "password"
    t.string   "e_mail"
    t.integer  "rental_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", :force => true do |t|
    t.integer  "movie_id"
    t.string   "title"
    t.string   "year_of_realease"
    t.string   "type"
    t.string   "starring"
    t.string   "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rentals", :force => true do |t|
    t.integer  "rental_id"
    t.integer  "movie_id"
    t.date     "date_of_rental"
    t.string   "status"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", :force => true do |t|
    t.integer  "sales_id"
    t.integer  "customer_id"
    t.date     "date_of_sales"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "transactionid_id"
    t.integer  "transaction_type"
    t.integer  "sales_id"
    t.integer  "renting_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
