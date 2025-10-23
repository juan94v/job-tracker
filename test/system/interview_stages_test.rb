require "application_system_test_case"

class InterviewStagesTest < ApplicationSystemTestCase
  setup do
    @interview_stage = interview_stages(:one)
  end

  test "visiting the index" do
    visit interview_stages_url
    assert_selector "h1", text: "Interview stages"
  end

  test "should create interview stage" do
    visit interview_stages_url
    click_on "New interview stage"

    fill_in "Completed date", with: @interview_stage.completed_date
    fill_in "Feedback", with: @interview_stage.feedback
    fill_in "Follow up date", with: @interview_stage.follow_up_date
    fill_in "Job application", with: @interview_stage.job_application_id
    fill_in "Name", with: @interview_stage.name
    fill_in "Order", with: @interview_stage.order
    fill_in "Scheduled date", with: @interview_stage.scheduled_date
    fill_in "Status", with: @interview_stage.status
    click_on "Create Interview stage"

    assert_text "Interview stage was successfully created"
    click_on "Back"
  end

  test "should update Interview stage" do
    visit interview_stage_url(@interview_stage)
    click_on "Edit this interview stage", match: :first

    fill_in "Completed date", with: @interview_stage.completed_date.to_s
    fill_in "Feedback", with: @interview_stage.feedback
    fill_in "Follow up date", with: @interview_stage.follow_up_date
    fill_in "Job application", with: @interview_stage.job_application_id
    fill_in "Name", with: @interview_stage.name
    fill_in "Order", with: @interview_stage.order
    fill_in "Scheduled date", with: @interview_stage.scheduled_date.to_s
    fill_in "Status", with: @interview_stage.status
    click_on "Update Interview stage"

    assert_text "Interview stage was successfully updated"
    click_on "Back"
  end

  test "should destroy Interview stage" do
    visit interview_stage_url(@interview_stage)
    click_on "Destroy this interview stage", match: :first

    assert_text "Interview stage was successfully destroyed"
  end
end
