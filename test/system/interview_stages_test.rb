require "application_system_test_case"

class InterviewStagesTest < ApplicationSystemTestCase
  setup do
    @job_application = job_applications(:one)
    @interview_stage = interview_stages(:one)
  end

  test "visiting the index" do
    visit job_application_interview_stages_url(@job_application)
    assert_selector "h1", text: "Interview Stages"
  end

  test "should create interview stage" do
    visit job_application_interview_stages_url(@job_application)
    click_on "New Stage"

    fill_in "Stage Name *", with: "Phone Screen"
    fill_in "Order", with: 1
    select "Pending", from: "Status"
    click_on "Create Stage"

    assert_text "Interview stage was successfully created"
    click_on "All Stages"
  end

  test "should update Interview stage" do
    visit job_application_interview_stage_url(@job_application, @interview_stage)
    click_on "Edit Stage"

    fill_in "Stage Name *", with: "Updated Stage Name"
    fill_in "Order", with: @interview_stage.order
    select @interview_stage.status.titleize, from: "Status"
    click_on "Update Stage"

    assert_text "Interview stage was successfully updated"
  end

  test "should destroy Interview stage" do
    skip "Turbo confirm modal has timing issues in headless Chrome - delete covered by controller tests"
    visit job_application_interview_stage_url(@job_application, @interview_stage)
    accept_confirm do
      click_on "Delete Stage"
    end

    assert_text "Interview stage was successfully destroyed"
  end
end
