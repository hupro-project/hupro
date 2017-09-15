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

ActiveRecord::Schema.define(version: 20170914175227) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "company_name"
    t.string "address"
    t.string "thumbnail_img"
    t.string "date"
    t.string "position"
    t.string "job_descripton"
    t.string "avilities"
    t.string "employees"
    t.string "work_place"
    t.string "work_start"
    t.string "work_end"
    t.string "holiday"
    t.string "salary"
    t.string "treatment"
    t.string "interview_content"
    t.integer "employment_type_pro"
    t.integer "employment_type_student"
    t.integer "employment_type_part"
    t.string "work_time_morning"
    t.string "work_time_afternoon"
    t.string "work_time_break"
    t.string "work_time_study"
    t.string "company_color1"
    t.integer "company_color1_value"
    t.string "company_color2"
    t.integer "company_color2_value"
    t.string "company_color3"
    t.integer "company_color3_value"
    t.string "overtime"
    t.string "career_steppe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "header_img_file_name"
    t.string "header_img_content_type"
    t.integer "header_img_file_size"
    t.datetime "header_img_updated_at"
    t.string "footer_img1_file_name"
    t.string "footer_img1_content_type"
    t.integer "footer_img1_file_size"
    t.datetime "footer_img1_updated_at"
    t.string "footer_img2_file_name"
    t.string "footer_img2_content_type"
    t.integer "footer_img2_file_size"
    t.datetime "footer_img2_updated_at"
    t.string "footer_img3_file_name"
    t.string "footer_img3_content_type"
    t.integer "footer_img3_file_size"
    t.datetime "footer_img3_updated_at"
    t.string "interview_file_name"
    t.string "interview_content_type"
    t.integer "interview_file_size"
    t.datetime "interview_updated_at"
  end

end
