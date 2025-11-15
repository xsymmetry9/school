require "application_system_test_case"

class StudentProgressReportsTest < ApplicationSystemTestCase
  setup do
    @student_progress_report = student_progress_reports(:one)
  end

  test "visiting the index" do
    visit student_progress_reports_url
    assert_selector "h1", text: "Student progress reports"
  end

  test "should create student progress report" do
    visit student_progress_reports_url
    click_on "New student progress report"

    fill_in "Feedback", with: @student_progress_report.feedback
    fill_in "Student name", with: @student_progress_report.student_name
    click_on "Create Student progress report"

    assert_text "Student progress report was successfully created"
    click_on "Back"
  end

  test "should update Student progress report" do
    visit student_progress_report_url(@student_progress_report)
    click_on "Edit this student progress report", match: :first

    fill_in "Feedback", with: @student_progress_report.feedback
    fill_in "Student name", with: @student_progress_report.student_name
    click_on "Update Student progress report"

    assert_text "Student progress report was successfully updated"
    click_on "Back"
  end

  test "should destroy Student progress report" do
    visit student_progress_report_url(@student_progress_report)
    click_on "Destroy this student progress report", match: :first

    assert_text "Student progress report was successfully destroyed"
  end
end
