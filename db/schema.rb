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

ActiveRecord::Schema.define(version: 20150603155323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "egg_groups", force: :cascade do |t|
    t.string   "name"
    t.string   "name_fr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "egg_groups_pokemons", force: :cascade do |t|
    t.integer "egg_group_id"
    t.integer "pokemon_id"
  end

  add_index "egg_groups_pokemons", ["egg_group_id"], name: "index_egg_groups_pokemons_on_egg_group_id", using: :btree
  add_index "egg_groups_pokemons", ["pokemon_id"], name: "index_egg_groups_pokemons_on_pokemon_id", using: :btree

  create_table "pokemons", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.integer  "national_id"
    t.integer  "generation"
    t.string   "species"
    t.string   "name_fr"
    t.float    "height_in"
    t.string   "height_ft"
    t.float    "height_cm"
    t.float    "weight_lb"
    t.float    "weight_kg"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pokemons_types", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "type_id"
  end

  add_index "pokemons_types", ["pokemon_id"], name: "index_pokemons_types_on_pokemon_id", using: :btree
  add_index "pokemons_types", ["type_id"], name: "index_pokemons_types_on_type_id", using: :btree

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.string   "name_fr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
