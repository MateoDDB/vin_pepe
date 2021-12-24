# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_22_193419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bouteilles", force: :cascade do |t|
    t.string "name"
    t.string "year"
    t.text "description"
    t.string "note"
    t.string "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "nom"
    t.string "quantite"
    t.string "marque"
    t.integer "note"
    t.string "prix"
    t.text "description"
    t.bigint "recette_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recette_id"], name: "index_ingredients_on_recette_id"
  end

  create_table "recettes", force: :cascade do |t|
    t.string "nom"
    t.string "time"
    t.string "difficulte"
    t.integer "note"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ingredients", "recettes"
end
