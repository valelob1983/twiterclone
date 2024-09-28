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

ActiveRecord::Schema[7.1].define(version: 2024_09_28_031920) do
  create_schema "clases"

  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "alcoholic_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "yeast_type"
  end

  create_table "cliente", id: false, force: :cascade do |t|
    t.string "email", limit: 50
    t.string "nombre"
    t.string "telefono", limit: 16
    t.string "empresa", limit: 50
    t.integer "prioridad", limit: 2
  end

  create_table "cuenas1", primary_key: "numero_cuenta", id: :integer, default: nil, force: :cascade do |t|
    t.float "balance"
    t.check_constraint "balance >= 0.00::double precision", name: "cuenas1_balance_check"
  end

  create_table "director", primary_key: "iddirector", id: :serial, force: :cascade do |t|
    t.string "nombre", limit: 100
  end

  create_table "documentary_films", force: :cascade do |t|
    t.string "name"
    t.string "synopsis"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "synopsis"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pelicula", id: false, force: :cascade do |t|
    t.integer "idpelicula"
    t.string "pelicula", limit: 100
    t.integer "agnoestreno"
    t.integer "iddirector"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "producto", primary_key: "idproducto", id: :serial, force: :cascade do |t|
    t.string "codigo", limit: 250, null: false

    t.unique_constraint ["codigo"], name: "producto_codigo_key"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stock"
  end

  create_table "series", force: :cascade do |t|
    t.string "name"
    t.text "synopsis"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.string "description"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
    t.string "email"
  end

  create_table "world_cup_teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pelicula", "director", column: "iddirector", primary_key: "iddirector", name: "fk_director"
end
