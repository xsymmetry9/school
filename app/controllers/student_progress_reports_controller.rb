class StudentProgressReportsController < ApplicationController
  before_action :set_student_progress_report, only: %i[ show edit update destroy ]

  # GET /student_progress_reports or /student_progress_reports.json
  def index
    @student_progress_reports = StudentProgressReport.all
  end

  # GET /student_progress_reports/1 or /student_progress_reports/1.json
  def show
  end

  # GET /student_progress_reports/new
  def new
    @student_progress_report = StudentProgressReport.new
  end

  # GET /student_progress_reports/1/edit
  def edit
  end

  # POST /student_progress_reports or /student_progress_reports.json
  def create
    @student_progress_report = StudentProgressReport.new(student_progress_report_params)

    respond_to do |format|
      if @student_progress_report.save
        format.html { redirect_to @student_progress_report, notice: "Student progress report was successfully created." }
        format.json { render :show, status: :created, location: @student_progress_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_progress_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_progress_reports/1 or /student_progress_reports/1.json
  def update
    respond_to do |format|
      if @student_progress_report.update(student_progress_report_params)
        format.html { redirect_to @student_progress_report, notice: "Student progress report was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @student_progress_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_progress_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_progress_reports/1 or /student_progress_reports/1.json
  def destroy
    @student_progress_report.destroy!

    respond_to do |format|
      format.html { redirect_to student_progress_reports_path, notice: "Student progress report was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_progress_report
      @student_progress_report = StudentProgressReport.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def student_progress_report_params
      params.expect(student_progress_report: [ :student_name, :feedback ])
    end
end
