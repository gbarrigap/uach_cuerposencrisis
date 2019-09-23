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

ActiveRecord::Schema.define(version: 2019_09_23_005244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capsulas", force: :cascade do |t|
    t.bigint "obra_id", null: false
    t.bigint "concepto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["concepto_id"], name: "index_capsulas_on_concepto_id"
    t.index ["obra_id"], name: "index_capsulas_on_obra_id"
  end

  create_table "conceptos", force: :cascade do |t|
    t.string "titulo"
    t.string "video_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "obras", force: :cascade do |t|
    t.string "titulo"
    t.string "coreografia"
    t.text "resumen"
    t.string "url_video"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_obras_on_user_id"
  end

  create_table "repositorios", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "remember_digest"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "capsulas", "conceptos"
  add_foreign_key "capsulas", "obras"
  add_foreign_key "obras", "users"
end
