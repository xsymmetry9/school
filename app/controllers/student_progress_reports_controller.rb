
class StudentProgressReportsController < ApplicationController

  def show
    @student_progress_reports = StudentProgressReport.find(params[:id])
    
  end

  def index 
    @student_progress_reports = StudentProgressReport.all
  end

  def new
    @student_progress_report = StudentProgressReport.new
  end

  def create
    @student_progress_report = StudentProgressReport.new(params.require(:student_progress_report).permit(:student_name, :language, :course_name, :book_name, :feedback))
    @student_progress_report.save
    redirect_to @student_progress_report
  end

end
