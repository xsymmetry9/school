json.extract! student_progress_report, :id, :student_name, :feedback, :created_at, :updated_at
json.url student_progress_report_url(student_progress_report, format: :json)
