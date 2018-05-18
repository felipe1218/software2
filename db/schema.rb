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

ActiveRecord::Schema.define(version: 2018_05_18_220727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compra_productos", force: :cascade do |t|
    t.bigint "compra_id"
    t.bigint "producto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compra_id"], name: "index_compra_productos_on_compra_id"
    t.index ["producto_id"], name: "index_compra_productos_on_producto_id"
  end

  create_table "compras", force: :cascade do |t|
    t.integer "valor"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "usuario_id"
    t.index ["usuario_id"], name: "index_compras_on_usuario_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "tipo"
    t.string "material"
    t.integer "alto"
    t.integer "ancho"
    t.integer "profundidad"
    t.string "color"
    t.integer "peso"
    t.string "ciudad"
    t.string "empresa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "tipo_documento"
    t.string "numero_documento"
    t.string "nombre"
    t.string "telefono"
    t.string "celular"
    t.string "direccion"
    t.string "ciudad"
    t.string "departamento"
    t.string "pais"
    t.string "profesion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  create_table "usuarios_roles", id: false, force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_usuarios_roles_on_role_id"
    t.index ["usuario_id", "role_id"], name: "index_usuarios_roles_on_usuario_id_and_role_id"
    t.index ["usuario_id"], name: "index_usuarios_roles_on_usuario_id"
  end

  add_foreign_key "compra_productos", "compras"
  add_foreign_key "compra_productos", "productos"
  add_foreign_key "compras", "usuarios"
end
