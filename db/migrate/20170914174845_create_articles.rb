class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :company_name
      t.string :address
      t.string :date
      t.string :position
      t.string :job_descripton
      t.string :avilities
      t.string :employees
      t.string :work_place
      t.string :work_start
      t.string :work_end
      t.string :holiday
      t.string :salary
      t.string :treatment
      t.string :interview_content
      t.integer :employment_type_pro
      t.integer :employment_type_student
      t.integer :employment_type_part
      t.string :work_time_morning
      t.string :work_time_afternoon
      t.string :work_time_break
      t.string :work_time_study
      t.string :company_color1
      t.integer :company_color1_value
      t.string :company_color2
      t.integer :company_color2_value
      t.string :company_color3
      t.integer :company_color3_value
      t.string :overtime
      t.string :career_steppe

      t.timestamps
    end
  end
end
