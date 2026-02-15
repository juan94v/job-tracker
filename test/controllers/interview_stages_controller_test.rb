require "test_helper"

class InterviewStagesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one)
    @job_application = job_applications(:one)
    @interview_stage = interview_stages(:one)
    sign_in @user
  end

  test "should get index" do
    get job_application_interview_stages_url(@job_application)
    assert_response :success
  end

  test "should get new" do
    get new_job_application_interview_stage_url(@job_application)
    assert_response :success
  end

  test "should create interview_stage" do
    assert_difference("InterviewStage.count") do
      post job_application_interview_stages_url(@job_application), params: { interview_stage: {
        completed_date: @interview_stage.completed_date,
        feedback: @interview_stage.feedback,
        follow_up_date: @interview_stage.follow_up_date,
        name: "New Stage",
        order: 3,
        scheduled_date: @interview_stage.scheduled_date,
        status: @interview_stage.status
      } }
    end

    assert_redirected_to job_application_interview_stage_url(@job_application, InterviewStage.last)
  end

  test "should show interview_stage" do
    get job_application_interview_stage_url(@job_application, @interview_stage)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_application_interview_stage_url(@job_application, @interview_stage)
    assert_response :success
  end

  test "should update interview_stage" do
    patch job_application_interview_stage_url(@job_application, @interview_stage), params: { interview_stage: {
      completed_date: @interview_stage.completed_date,
      feedback: @interview_stage.feedback,
      follow_up_date: @interview_stage.follow_up_date,
      name: @interview_stage.name,
      order: @interview_stage.order,
      scheduled_date: @interview_stage.scheduled_date,
      status: @interview_stage.status
    } }
    assert_redirected_to job_application_interview_stage_url(@job_application, @interview_stage)
  end

  test "should destroy interview_stage" do
    assert_difference("InterviewStage.count", -1) do
      delete job_application_interview_stage_url(@job_application, @interview_stage)
    end

    assert_redirected_to job_application_interview_stages_url(@job_application)
  end

  test "should redirect to login when not authenticated" do
    sign_out @user
    get job_application_interview_stages_url(@job_application)
    assert_redirected_to new_user_session_url
  end

  test "should not access other users interview stages" do
    other_job_app = job_applications(:two)
    other_stage = interview_stages(:two)

    # User one should not be able to access user two's job application stages
    get job_application_interview_stage_url(other_job_app, other_stage)
    assert_response :not_found
  end
end
