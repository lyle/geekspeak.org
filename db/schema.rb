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

ActiveRecord::Schema.define(:version => 20120821060824) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "bit_episodes", :force => true do |t|
    t.integer  "bit_id"
    t.integer  "episode_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bits", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "user_id"
    t.text     "body"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "episode_audios", :force => true do |t|
    t.integer  "episode_id"
    t.string   "audio_file_name"
    t.string   "audio_content_type"
    t.integer  "audio_file_size"
    t.datetime "audio_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "episode_audios", ["episode_id"], :name => "index_episode_audios_on_episode_id"

  create_table "episode_images", :force => true do |t|
    t.integer  "episode_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "episode_images", ["episode_id"], :name => "index_episode_images_on_episode_id"

  create_table "episodes", :force => true do |t|
    t.string   "title"
    t.string   "promo"
    t.text     "abstract"
    t.string   "teaser_file_name"
    t.string   "teaser_content_type"
    t.integer  "teaser_file_size"
    t.datetime "teaser_updated_at"
    t.string   "status"
    t.date     "airdate"
    t.integer  "user_id"
    t.string   "slug"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.text     "content"
  end

  add_index "episodes", ["slug"], :name => "index_episodes_on_slug"

  create_table "headline_discussions", :id => false, :force => true do |t|
    t.integer "id",          :null => false
    t.integer "show_id",     :null => false
    t.integer "headline_id", :null => false
    t.integer "position",    :null => false
  end

  create_table "headlines", :id => false, :force => true do |t|
    t.integer  "id",                                           :null => false
    t.integer  "user_id",                                      :null => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "title",      :limit => 64,                     :null => false
    t.text     "content"
    t.string   "status",     :limit => 64,  :default => "new"
    t.string   "url",        :limit => 256
  end

  create_table "participants", :force => true do |t|
    t.integer  "episode_id"
    t.integer  "user_id"
    t.string   "role"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_roles", :force => true do |t|
    t.string "title"
  end

  create_table "refinery_roles_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "refinery_roles_users", ["role_id", "user_id"], :name => "index_refinery_roles_users_on_role_id_and_user_id"
  add_index "refinery_roles_users", ["user_id", "role_id"], :name => "index_refinery_roles_users_on_user_id_and_role_id"

  create_table "refinery_user_plugins", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "refinery_user_plugins", ["name"], :name => "index_refinery_user_plugins_on_name"
  add_index "refinery_user_plugins", ["user_id", "name"], :name => "index_refinery_user_plugins_on_user_id_and_name", :unique => true

  create_table "refinery_users", :force => true do |t|
    t.string   "username",               :null => false
    t.string   "email",                  :null => false
    t.string   "encrypted_password",     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.datetime "remember_created_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "refinery_users", ["id"], :name => "index_refinery_users_on_id"

  create_table "segment_bits", :force => true do |t|
    t.integer  "segment_id"
    t.integer  "bit_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "segments", :force => true do |t|
    t.string   "title"
    t.integer  "episode_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shows", :id => false, :force => true do |t|
    t.integer  "id",                                               :null => false
    t.string   "title",          :limit => 64,                     :null => false
    t.string   "category",       :limit => 254
    t.text     "promo"
    t.text     "abstract",                                         :null => false
    t.text     "content"
    t.integer  "user_id",                                          :null => false
    t.datetime "created_on",                                       :null => false
    t.datetime "updated_on",                                       :null => false
    t.string   "status",         :limit => 64,  :default => "new"
    t.datetime "showtime"
    t.integer  "teaser_id"
    t.text     "planning_notes"
    t.integer  "lock_version",                  :default => 0
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login"
    t.string   "display_name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "userslive", :id => false, :force => true do |t|
    t.integer "id",                                       :null => false
    t.string  "login",                     :limit => 80
    t.string  "password"
    t.string  "display_name",              :limit => 64
    t.string  "email",                     :limit => 128
    t.string  "crypted_password",          :limit => nil
    t.string  "salt",                      :limit => nil
    t.time    "remimber_token_expires_at"
    t.boolean "remimber_token"
  end

end
