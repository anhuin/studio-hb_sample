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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120618142517) do

  create_table "actors", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "directors", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "friends", :force => true do |t|
    t.integer  "user_id",                        :null => false
    t.integer  "friend_id",                      :null => false
    t.boolean  "is_accepted", :default => false, :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "friends", ["user_id", "friend_id"], :name => "index_friends_on_user_id_and_friend_id", :unique => true

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "engine_actors", :force => true do |t|
    t.integer "engine_id"
    t.integer "actor_id"
  end

  add_index "engine_actors", ["engine_id", "actor_id"], :name => "index_engine_actors_on_engine_id_and_actor_id"

  create_table "engine_directors", :force => true do |t|
    t.integer "engine_id"
    t.integer "director_id"
  end

  add_index "engine_directors", ["engine_id", "director_id"], :name => "index_engine_directors_on_engine_id_and_director_id"

  create_table "engine_genres", :force => true do |t|
    t.integer "engine_id"
    t.integer "genre_id"
  end

  add_index "engine_genres", ["engine_id", "genre_id"], :name => "index_engine_genres_on_engine_id_and_genre_id"

  create_table "engine_preferences", :force => true do |t|
    t.integer  "user_id",            :null => false
    t.integer  "engine_id",           :null => false
    t.integer  "preference_type_id", :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "engine_producers", :force => true do |t|
    t.integer "engine_id"
    t.integer "producer_id"
  end

  add_index "engine_producers", ["engine_id", "producer_id"], :name => "index_engine_producers_on_engine_id_and_producer_id"

  create_table "engines", :force => true do |t|
    t.string   "title",                                            :null => false
    t.text     "synopsis"
    t.binary   "picture",     :limit => 16777215,                  :null => false
    t.datetime "released_at",                                      :null => false
    t.float    "price",                           :default => 0.0, :null => false
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "product_id",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "orders", ["product_id"], :name => "index_orders_on_product_id"
  add_index "orders", ["user_id"], :name => "index_orders_on_user_id"

  create_table "preference_types", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "producers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "products", :force => true do |t|
    t.integer  "engine_id",   :null => false
    t.datetime "begin_at"
    t.datetime "end_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "login"
    t.date     "birthday"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "walls", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "poster_id",  :null => false
    t.text     "message",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wish_lists", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "engine_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "wish_lists", ["engine_id"], :name => "index_wish_lists_on_engine_id"
  add_index "wish_lists", ["user_id"], :name => "index_wish_lists_on_user_id"

end
