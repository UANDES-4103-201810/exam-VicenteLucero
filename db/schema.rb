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

ActiveRecord::Schema.define(version: 2018_06_20_191552) do

  create_table "delivery_infos", force: :cascade do |t|
    t.integer "order_id"
    t.integer "phone"
    t.string "address_line1"
    t.string "address_line2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_delivery_infos_on_order_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "pizza_id"
    t.integer "costumer_id"
    t.integer "delivery_id"
    t.string "payment_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["costumer_id"], name: "index_orders_on_costumer_id"
    t.index ["delivery_id"], name: "index_orders_on_delivery_id"
    t.index ["pizza_id"], name: "index_orders_on_pizza_id"
  end

  create_table "pizzas", force: :cascade do |t|
    t.integer "recipe_id"
    t.string "crust"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_pizzas_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "ingredient_id"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_recipes_on_ingredient_id"
  end

end
