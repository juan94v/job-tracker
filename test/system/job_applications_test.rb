require "application_system_test_case"

class JobApplicationsTest < ApplicationSystemTestCase
  setup do
    @job_application = job_applications(:one)
  end

  test "visiting the index" do
    visit job_applications_url
    assert_selector "h1", text: "Job Applications"
  end

  test "should create job application" do
    visit job_applications_url
    click_on "New job application"

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
    click_on "Back to job applications"
  end

  test "should update Job application" do
    visit job_application_url(@job_application)
    click_on "Edit", match: :first

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
    click_on "Back to job applications"
  end

  test "should destroy Job application" do
    visit job_application_url(@job_application)
    click_on "Destroy this job application", match: :first

    assert_text "Job application was successfully destroyed"
  end
end
