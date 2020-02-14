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

ActiveRecord::Schema.define(version: 2020_02_12_222704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mushrooms", force: :cascade do |t|
    t.string "family"
    t.string "typology"
    t.string "cap_shape"
    t.string "cap_surface"
    t.string "cap_color"
    t.string "bruises"
    t.string "odor"
    t.string "gill_attachment"
    t.string "gill_spacing"
    t.string "gill_size"
    t.string "gill_color"
    t.string "stalk_shape"
    t.string "stalk_root"
    t.string "stalk_surface_above_ring"
    t.string "stalk_surface_below_ring"
    t.string "stalk_color_above_ring"
    t.string "stalk_color_below_ring"
    t.string "veil_type"
    t.string "veil_color"
    t.string "ring_number"
    t.string "ring_type"
    t.string "spore_print_color"
    t.string "population"
    t.string "habitat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bruises"], name: "index_mushrooms_on_bruises"
    t.index ["cap_color"], name: "index_mushrooms_on_cap_color"
    t.index ["cap_shape"], name: "index_mushrooms_on_cap_shape"
    t.index ["cap_surface"], name: "index_mushrooms_on_cap_surface"
    t.index ["gill_attachment"], name: "index_mushrooms_on_gill_attachment"
    t.index ["gill_color"], name: "index_mushrooms_on_gill_color"
    t.index ["gill_size"], name: "index_mushrooms_on_gill_size"
    t.index ["gill_spacing"], name: "index_mushrooms_on_gill_spacing"
    t.index ["habitat"], name: "index_mushrooms_on_habitat"
    t.index ["odor"], name: "index_mushrooms_on_odor"
    t.index ["population"], name: "index_mushrooms_on_population"
    t.index ["ring_number"], name: "index_mushrooms_on_ring_number"
    t.index ["ring_type"], name: "index_mushrooms_on_ring_type"
    t.index ["spore_print_color"], name: "index_mushrooms_on_spore_print_color"
    t.index ["stalk_color_above_ring"], name: "index_mushrooms_on_stalk_color_above_ring"
    t.index ["stalk_color_below_ring"], name: "index_mushrooms_on_stalk_color_below_ring"
    t.index ["stalk_root"], name: "index_mushrooms_on_stalk_root"
    t.index ["stalk_shape"], name: "index_mushrooms_on_stalk_shape"
    t.index ["stalk_surface_above_ring"], name: "index_mushrooms_on_stalk_surface_above_ring"
    t.index ["stalk_surface_below_ring"], name: "index_mushrooms_on_stalk_surface_below_ring"
    t.index ["veil_color"], name: "index_mushrooms_on_veil_color"
    t.index ["veil_type"], name: "index_mushrooms_on_veil_type"
  end

end
