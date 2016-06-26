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

ActiveRecord::Schema.define(version: 20160412003907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.string   "title",                       null: false
    t.string   "title_long"
    t.string   "company"
    t.string   "city",                        null: false
    t.string   "state",                       null: false
    t.date     "start_date",                  null: false
    t.date     "end_date"
    t.boolean  "current_job", default: false, null: false
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "jobs", ["user_id"], name: "index_jobs_on_user_id", using: :btree

  create_table "links", force: :cascade do |t|
    t.string   "text",                   null: false
    t.string   "url",                    null: false
    t.integer  "type_of",    default: 0, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "photos", ["user_id"], name: "index_photos_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title",      null: false
    t.text     "text"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "posts_photos", force: :cascade do |t|
    t.string   "title"
    t.string   "caption"
    t.integer  "post_id"
    t.integer  "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts_photos", ["photo_id"], name: "index_posts_photos_on_photo_id", using: :btree
  add_index "posts_photos", ["post_id"], name: "index_posts_photos_on_post_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name",              null: false
    t.date     "start_date"
    t.date     "end_date"
    t.text     "short_description", null: false
    t.text     "long_description",  null: false
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "projects_links", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "link_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "projects_links", ["link_id"], name: "index_projects_links_on_link_id", using: :btree
  add_index "projects_links", ["project_id"], name: "index_projects_links_on_project_id", using: :btree

  create_table "projects_photos", force: :cascade do |t|
    t.string   "title"
    t.string   "caption"
    t.integer  "project_id"
    t.integer  "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "projects_photos", ["photo_id"], name: "index_projects_photos_on_photo_id", using: :btree
  add_index "projects_photos", ["project_id"], name: "index_projects_photos_on_project_id", using: :btree

  create_table "projects_skills", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "projects_skills", ["project_id"], name: "index_projects_skills_on_project_id", using: :btree
  add_index "projects_skills", ["skill_id"], name: "index_projects_skills_on_skill_id", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string   "name",                            null: false
    t.date     "start_date",                      null: false
    t.date     "end_date"
    t.string   "degree",                          null: false
    t.string   "degree_long"
    t.string   "major",                           null: false
    t.string   "gpa"
    t.string   "city"
    t.date     "graduation_date",                 null: false
    t.boolean  "attending",       default: false, null: false
    t.text     "activities"
    t.integer  "user_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "schools", ["user_id"], name: "index_schools_on_user_id", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "name",                            null: false
    t.text     "description"
    t.string   "category"
    t.boolean  "currently_using", default: false
    t.date     "last_used"
    t.integer  "skill_level"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.text     "description", null: false
    t.integer  "job_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tasks", ["job_id"], name: "index_tasks_on_job_id", using: :btree

  create_table "tasks_skills", force: :cascade do |t|
    t.integer  "task_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tasks_skills", ["skill_id"], name: "index_tasks_skills_on_skill_id", using: :btree
  add_index "tasks_skills", ["task_id"], name: "index_tasks_skills_on_task_id", using: :btree

  create_table "users", force: :cascade do |t|
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
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "title"
    t.text     "about_me"
    t.text     "resume_objective"
    t.string   "professional_title"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_links", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "link_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users_links", ["link_id"], name: "index_users_links_on_link_id", using: :btree
  add_index "users_links", ["user_id"], name: "index_users_links_on_user_id", using: :btree

  create_table "users_skills", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users_skills", ["skill_id"], name: "index_users_skills_on_skill_id", using: :btree
  add_index "users_skills", ["user_id"], name: "index_users_skills_on_user_id", using: :btree

  add_foreign_key "jobs", "users"
  add_foreign_key "photos", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "posts_photos", "photos"
  add_foreign_key "posts_photos", "posts"
  add_foreign_key "projects", "users"
  add_foreign_key "projects_links", "links"
  add_foreign_key "projects_links", "projects"
  add_foreign_key "projects_photos", "photos"
  add_foreign_key "projects_photos", "projects"
  add_foreign_key "projects_skills", "projects"
  add_foreign_key "projects_skills", "skills"
  add_foreign_key "schools", "users"
  add_foreign_key "tasks", "jobs"
  add_foreign_key "tasks_skills", "skills"
  add_foreign_key "tasks_skills", "tasks"
  add_foreign_key "users_links", "links"
  add_foreign_key "users_links", "users"
  add_foreign_key "users_skills", "skills"
  add_foreign_key "users_skills", "users"
end
