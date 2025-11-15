class AddTimestampToStudentprogressreports < ActiveRecord::Migration[8.0]
  def change
    add_column :student_progress_reports, :created_at, :datetime
    add_column :student_progress_reports, :updated_at, :datetime
  end
end
