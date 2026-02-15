class InterviewStagesController < ApplicationController
  before_action :set_job_application
  before_action :set_interview_stage, only: %i[ show edit update destroy ]

  # GET /job_applications/:job_application_id/interview_stages
  def index
    @interview_stages = @job_application.interview_stages.order(:order)
  end

  # GET /job_applications/:job_application_id/interview_stages/1
  def show
  end

  # GET /job_applications/:job_application_id/interview_stages/new
  def new
    @interview_stage = @job_application.interview_stages.build
    # Auto-set order to next available
    max_order = @job_application.interview_stages.maximum(:order) || 0
    @interview_stage.order = max_order + 1
  end

  # GET /job_applications/:job_application_id/interview_stages/1/edit
  def edit
  end

  # POST /job_applications/:job_application_id/interview_stages
  def create
    @interview_stage = @job_application.interview_stages.build(interview_stage_params)

    respond_to do |format|
      if @interview_stage.save
        format.html { redirect_to job_application_interview_stage_path(@job_application, @interview_stage), notice: "Interview stage was successfully created." }
        format.json { render :show, status: :created, location: [ @job_application, @interview_stage ] }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @interview_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_applications/:job_application_id/interview_stages/1
  def update
    respond_to do |format|
      if @interview_stage.update(interview_stage_params)
        format.html { redirect_to job_application_interview_stage_path(@job_application, @interview_stage), notice: "Interview stage was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: [ @job_application, @interview_stage ] }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @interview_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_applications/:job_application_id/interview_stages/1
  def destroy
    @interview_stage.destroy!

    respond_to do |format|
      format.html { redirect_to job_application_interview_stages_path(@job_application), notice: "Interview stage was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Find the parent job application (only from current user's applications)
    def set_job_application
      @job_application = current_user.job_applications.find(params.expect(:job_application_id))
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_interview_stage
      @interview_stage = @job_application.interview_stages.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def interview_stage_params
      params.expect(interview_stage: [ :name, :order, :status, :scheduled_date, :completed_date, :follow_up_date, :feedback ])
    end
end
