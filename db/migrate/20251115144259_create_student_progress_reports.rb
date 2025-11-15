class CreateStudentProgressReports < ActiveRecord::Migration[8.0]
  def change
    create_table :student_progress_reports do |t|
      t.string :student_name
      t.string :language
      t.string :course_name
      t.string :book_name
      t.text :feedback

    end
  end
end
