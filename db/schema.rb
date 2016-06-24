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

ActiveRecord::Schema.define(version: 20160624014315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "analytics", force: true do |t|
    t.string   "url"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "analytics", ["user_id"], name: "index_analytics_on_user_id", using: :btree

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "summary"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "articles", ["user_id"], name: "index_articles_on_user_id", using: :btree

  create_table "background_infos", force: true do |t|
    t.integer  "background_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "background_infos", ["user_id"], name: "index_background_infos_on_user_id", using: :btree

  create_table "balances", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "careers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clerks", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "school_id"
    t.boolean  "power",                  default: false
  end

  add_index "clerks", ["email"], name: "index_clerks_on_email", unique: true, using: :btree
  add_index "clerks", ["reset_password_token"], name: "index_clerks_on_reset_password_token", unique: true, using: :btree
  add_index "clerks", ["school_id"], name: "index_clerks_on_school_id", using: :btree

  create_table "demographics", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "domains", force: true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "domains", ["user_id"], name: "index_domains_on_user_id", using: :btree

  create_table "experiences", force: true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.integer  "background_info_id"
  end

  add_index "experiences", ["background_info_id"], name: "index_experiences_on_background_info_id", using: :btree

  create_table "homepage_infos", force: true do |t|
    t.string   "homepage_header",           default: ""
    t.string   "homepage_display_name",     default: ""
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "homepage_pic_file_name"
    t.string   "homepage_pic_content_type"
    t.integer  "homepage_pic_file_size"
    t.datetime "homepage_pic_updated_at"
  end

  add_index "homepage_infos", ["user_id"], name: "index_homepage_infos_on_user_id", using: :btree

  create_table "industries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mconcentrations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personal_infos", force: true do |t|
    t.string   "name_first",             default: ""
    t.string   "name_last",              default: ""
    t.text     "intro_paragraph",        default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "about_pic_file_name"
    t.string   "about_pic_content_type"
    t.integer  "about_pic_file_size"
    t.datetime "about_pic_updated_at"
    t.integer  "user_id"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
    t.boolean  "vertical",               default: false
    t.string   "exp1_file_name"
    t.string   "exp1_content_type"
    t.integer  "exp1_file_size"
    t.datetime "exp1_updated_at"
    t.string   "exp2_file_name"
    t.string   "exp2_content_type"
    t.integer  "exp2_file_size"
    t.datetime "exp2_updated_at"
    t.string   "exp3_file_name"
    t.string   "exp3_content_type"
    t.integer  "exp3_file_size"
    t.datetime "exp3_updated_at"
    t.string   "exp4_file_name"
    t.string   "exp4_content_type"
    t.integer  "exp4_file_size"
    t.datetime "exp4_updated_at"
    t.boolean  "remove_exp1",            default: false
    t.boolean  "remove_exp2",            default: false
    t.boolean  "remove_exp3",            default: false
    t.boolean  "remove_exp4",            default: false
  end

  add_index "personal_infos", ["user_id"], name: "index_personal_infos_on_user_id", using: :btree

  create_table "photo_links", force: true do |t|
    t.string   "tumblr_url"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photo_links", ["user_id"], name: "index_photo_links_on_user_id", using: :btree

  create_table "photos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
  end

  add_index "photos", ["user_id"], name: "index_photos_on_user_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "paragraph"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file1_file_name"
    t.string   "file1_content_type"
    t.integer  "file1_file_size"
    t.datetime "file1_updated_at"
    t.string   "file2_file_name"
    t.string   "file2_content_type"
    t.integer  "file2_file_size"
    t.datetime "file2_updated_at"
    t.string   "file3_file_name"
    t.string   "file3_content_type"
    t.integer  "file3_file_size"
    t.datetime "file3_updated_at"
    t.string   "file4_file_name"
    t.string   "file4_content_type"
    t.integer  "file4_file_size"
    t.datetime "file4_updated_at"
    t.integer  "file1_type"
    t.integer  "file2_type"
    t.integer  "file3_type"
    t.integer  "file4_type"
    t.string   "file1_title"
    t.string   "file2_title"
    t.string   "file3_title"
    t.string   "file4_title"
    t.string   "url"
    t.integer  "user_id"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "regions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviewers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "school_id"
  end

  add_index "reviewers", ["email"], name: "index_reviewers_on_email", unique: true, using: :btree
  add_index "reviewers", ["reset_password_token"], name: "index_reviewers_on_reset_password_token", unique: true, using: :btree
  add_index "reviewers", ["school_id"], name: "index_reviewers_on_school_id", using: :btree

  create_table "schools", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "color1"
    t.string   "color2"
    t.string   "domain"
  end

  create_table "sexes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "showcases", force: true do |t|
    t.integer  "showcase_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "showcases", ["user_id"], name: "index_showcases_on_user_id", using: :btree

  create_table "sizes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_links", force: true do |t|
    t.string   "link_linkedin"
    t.string   "link_instagram"
    t.string   "link_facebook"
    t.string   "link_twitter"
    t.string   "link_tumblr"
    t.string   "link_github"
    t.string   "link_alt_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "social_links", ["user_id"], name: "index_social_links_on_user_id", using: :btree

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "travels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uconcentrations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "undergrads", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "school_id"
    t.integer  "gradyear"
    t.integer  "approval",               default: 0
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["school_id"], name: "index_users_on_school_id", using: :btree

  create_table "visas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "website_settings", force: true do |t|
    t.string   "domain_name"
    t.integer  "color"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "website_settings", ["user_id"], name: "index_website_settings_on_user_id", using: :btree

  create_table "wexperiences", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
