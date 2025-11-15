require "test_helper"

class StudentProgressReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_progress_report = student_progress_reports(:one)
  end

  test "should get index" do
    get student_progress_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_student_progress_report_url
    assert_response :success
  end

  test "should create student_progress_report" do
    assert_difference("StudentProgressReport.count") do
      post student_progress_reports_url, params: { student_progress_report: { feedback: @student_progress_report.feedback, student_name: @student_progress_report.student_name } }
    end

    assert_redirected_to student_progress_report_url(StudentProgressReport.last)
  end

  test "should show student_progress_report" do
    get student_progress_report_url(@student_progress_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_progress_report_url(@student_progress_report)
    assert_response :success
  end

  test "should update student_progress_report" do
    patch student_progress_report_url(@student_progress_report), params: { student_progress_report: { feedback: @student_progress_report.feedback, student_name: @student_progress_report.student_name } }
    assert_redirected_to student_progress_report_url(@student_progress_report)
  end

  test "should destroy student_progress_report" do
    assert_difference("StudentProgressReport.count", -1) do
      delete student_progress_report_url(@student_progress_report)
    end

    assert_redirected_to student_progress_reports_url
  end
end
