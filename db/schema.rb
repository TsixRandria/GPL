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

ActiveRecord::Schema.define(version: 2020_09_19_184513) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "agences", force: :cascade do |t|
    t.datetime "heureouv"
    t.datetime "heurefer"
    t.datetime "heuresup"
    t.datetime "ouvsup"
    t.datetime "fermex"
    t.datetime "jourferr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "assurances", force: :cascade do |t|
    t.string "assurance"
    t.integer "montant"
    t.integer "caution"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "type"
    t.bigint "voiture_id"
    t.bigint "assurance_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assurance_id"], name: "index_categories_on_assurance_id"
    t.index ["voiture_id"], name: "index_categories_on_voiture_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nom"
    t.string "prenom"
    t.integer "telephone"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["nom"], name: "index_clients_on_nom"
    t.index ["prenom"], name: "index_clients_on_prenom"
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
    t.index ["telephone"], name: "index_clients_on_telephone", unique: true
  end

  create_table "modepaies", force: :cascade do |t|
    t.string "status"
    t.string "combinaison"
    t.integer "prixbs"
    t.integer "prixms"
    t.integer "prixhs"
    t.datetime "datedebut"
    t.datetime "datefin"
    t.integer "tarifjour"
    t.string "rubrique"
    t.bigint "type_tarif_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["type_tarif_id"], name: "index_modepaies_on_type_tarif_id"
  end

  create_table "options", force: :cascade do |t|
    t.integer "conducteur"
    t.integer "siegebebe"
    t.integer "rehausseur"
    t.boolean "gps"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "paiements", force: :cascade do |t|
    t.integer "accompte"
    t.integer "total"
    t.bigint "reservation_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reservation_id"], name: "index_paiements_on_reservation_id"
  end

  create_table "plannings", force: :cascade do |t|
    t.string "titre"
    t.string "etat"
    t.datetime "date_debut"
    t.datetime "echeance"
    t.bigint "voiture_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["voiture_id"], name: "index_plannings_on_voiture_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "numero_vol"
    t.string "compagnie"
    t.bigint "tarif_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tarif_id"], name: "index_reservations_on_tarif_id"
  end

  create_table "type_options", force: :cascade do |t|
    t.bigint "reservation_id"
    t.bigint "option_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["option_id"], name: "index_type_options_on_option_id"
    t.index ["reservation_id"], name: "index_type_options_on_reservation_id"
  end

  create_table "type_tarifs", force: :cascade do |t|
    t.string "titre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "voitures", force: :cascade do |t|
    t.string "image"
    t.string "marque"
    t.string "place"
    t.string "vitesse"
    t.string "type"
    t.boolean "climatiseur"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
