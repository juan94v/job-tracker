require "application_system_test_case"

class JobApplicationsTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
    @job_application = job_applications(:one)
    login_as(@user)
  end

  def login_as(user)
    visit new_user_session_url
    fill_in "Email", with: user.email
    fill_in "Password", with: "password123"
    click_on "Log in"
  end

  test "visiting the index" do
    visit job_applications_url
    assert_selector "h1", text: "Job Applications"
  end

  test "should create job application" do
    visit job_applications_url
    click_on "New Application"

    fill_in "Company *", with: "Test Company"
    fill_in "Position *", with: "Test Position"
    fill_in "Location", with: @job_application.location
    fill_in "Salary Range", with: @job_application.salary_range
    fill_in "Current Salary", with: @job_application.current_salary
    fill_in "Skill Focus", with: @job_application.skill_focus
    fill_in "Applied Through", with: @job_application.applied_through
    fill_in "General Notes", with: @job_application.general_notes
    fill_in "Final Outcome", with: @job_application.final_outcome
    fill_in "Contact Name", with: @job_application.contact_name
    fill_in "Contact Email", with: @job_application.contact_email
    fill_in "Contact Role", with: @job_application.contact_role
    select @job_application.status.titleize, from: "Status"
    click_on "Create Job Application"

    assert_text "Job application was successfully created"
    click_on "Back to Applications"
  end

  test "should update Job application" do
    visit job_application_url(@job_application)
    click_on "Edit Application"

    fill_in "Company *", with: "Updated Company"
    fill_in "Position *", with: "Updated Position"
    fill_in "Location", with: @job_application.location
    fill_in "Salary Range", with: @job_application.salary_range
    fill_in "Current Salary", with: @job_application.current_salary
    fill_in "Skill Focus", with: @job_application.skill_focus
    fill_in "Applied Through", with: @job_application.applied_through
    fill_in "General Notes", with: @job_application.general_notes
    fill_in "Final Outcome", with: @job_application.final_outcome
    fill_in "Contact Name", with: @job_application.contact_name
    fill_in "Contact Email", with: @job_application.contact_email
    fill_in "Contact Role", with: @job_application.contact_role
    select @job_application.status.titleize, from: "Status"
    click_on "Update Job Application"

    assert_text "Job application was successfully updated"
  end

  test "should destroy Job application" do
    skip "Turbo confirm modal has timing issues in headless Chrome - delete covered by controller tests"
    visit job_application_url(@job_application)
    accept_confirm do
      click_on "Delete Application"
    end

    assert_text "Job application was successfully destroyed"
  end
end
