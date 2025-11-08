require "application_system_test_case"

class InterviewStagesTest < ApplicationSystemTestCase
  setup do
    @job_application = job_applications(:one)
    @interview_stage = interview_stages(:one)
  end

  test "visiting the index" do
    visit job_application_interview_stages_url(@job_application)
    assert_selector "h1", text: "Interview stages for #{@job_application.company}"
  end

  test "should create interview stage" do
    visit job_application_interview_stages_url(@job_application)
    click_on "New interview stage"

    fill_in "Completed date", with: @interview_stage.completed_date
    fill_in "Feedback", with: @interview_stage.feedback
    fill_in "Follow up date", with: @interview_stage.follow_up_date
    fill_in "Name", with: @interview_stage.name
    fill_in "Order", with: @interview_stage.order
    fill_in "Scheduled date", with: @interview_stage.scheduled_date
    select @interview_stage.status.titleize, from: "Status"
    click_on "Create Interview stage"

    assert_text "Interview stage was successfully created"
    click_on "Back to interview stages"
  end

  test "should update Interview stage" do
    visit job_application_interview_stage_url(@job_application, @interview_stage)
    click_on "Edit this interview stage", match: :first

    fill_in "Completed date", with: @interview_stage.completed_date.to_s
    fill_in "Feedback", with: @interview_stage.feedback
    fill_in "Follow up date", with: @interview_stage.follow_up_date
    fill_in "Name", with: @interview_stage.name
    fill_in "Order", with: @interview_stage.order
    fill_in "Scheduled date", with: @interview_stage.scheduled_date.to_s
    select @interview_stage.status.titleize, from: "Status"
    click_on "Update Interview stage"

    assert_text "Interview stage was successfully updated"
    click_on "Back to interview stages"
  end

  test "should destroy Interview stage" do
    visit job_application_interview_stage_url(@job_application, @interview_stage)
    click_on "Destroy this interview stage", match: :first

    assert_text "Interview stage was successfully destroyed"
  end
end
