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

ActiveRecord::Schema.define(version: 20180217234953) do

  create_table "adresses", force: :cascade do |t|
    t.string "NumeroCivique"
    t.string "Rue"
    t.string "CodePosatl"
    t.string "Ville"
    t.string "Province"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_etats_civils", force: :cascade do |t|
    t.integer "Client_id"
    t.integer "EtasCivil_id"
    t.datetime "DateDebut"
    t.datetime "DateFin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_id"], name: "index_client_etats_civils_on_Client_id"
    t.index ["EtasCivil_id"], name: "index_client_etats_civils_on_EtasCivil_id"
  end

  create_table "client_has_conjoints", force: :cascade do |t|
    t.integer "Client_id"
    t.integer "Client_Has_Conjoint_id"
    t.datetime "DateDebut"
    t.datetime "DateFin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_Has_Conjoint_id"], name: "index_client_has_conjoints_on_Client_Has_Conjoint_id"
    t.index ["Client_id"], name: "index_client_has_conjoints_on_Client_id"
  end

  create_table "client_has_employeurs", force: :cascade do |t|
    t.integer "Client_id"
    t.integer "Employeur_id"
    t.datetime "DateDebut"
    t.datetime "DateFin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_id"], name: "index_client_has_employeurs_on_Client_id"
    t.index ["Employeur_id"], name: "index_client_has_employeurs_on_Employeur_id"
  end

  create_table "client_has_enfants", force: :cascade do |t|
    t.integer "Enfant_id"
    t.integer "Client_id"
    t.integer "Lien"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_id"], name: "index_client_has_enfants_on_Client_id"
    t.index ["Enfant_id"], name: "index_client_has_enfants_on_Enfant_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "Prenom"
    t.string "Nom"
    t.datetime "DateNaissance"
    t.string "NAS"
    t.integer "Adresse_id"
    t.integer "NombreEnfants"
    t.integer "CompteTaxesProprietaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Adresse_id"], name: "index_clients_on_Adresse_id"
  end

  create_table "employeurs", force: :cascade do |t|
    t.string "Nom"
    t.integer "Adresse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Adresse_id"], name: "index_employeurs_on_Adresse_id"
  end

  create_table "enfants", force: :cascade do |t|
    t.string "Nom"
    t.string "Prenom"
    t.datetime "DateNaissance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etats_civils", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etudes", force: :cascade do |t|
    t.string "SecteurEtudes"
    t.string "Niveau"
    t.datetime "DateDebut"
    t.datetime "DateComplition"
    t.integer "Client_id"
    t.integer "Institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_id"], name: "index_etudes_on_Client_id"
    t.index ["Institution_id"], name: "index_etudes_on_Institution_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "Nom"
    t.integer "Adresse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Adresse_id"], name: "index_institutions_on_Adresse_id"
  end

end
