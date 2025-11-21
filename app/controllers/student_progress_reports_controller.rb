
class StudentProgressReportsController < ApplicationController
before_action :set_student_progress_report, only: [:show, :edit, :update, :destroy]
  def show
    
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

  def edit

  end

  def update

  end 

  def destroy
    @student_progress_report.destroy
    redirect_to student_progress_reports_path
  end

  private
  
  def set_student_progress_report
    @student_progress_report = StudentProgressReport.find(params[:id])
  end


end
