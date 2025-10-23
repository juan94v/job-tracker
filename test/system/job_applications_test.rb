require "application_system_test_case"

class JobApplicationsTest < ApplicationSystemTestCase
  setup do
    @job_application = job_applications(:one)
  end

  test "visiting the index" do
    visit job_applications_url
    assert_selector "h1", text: "Job applications"
  end

  test "should create job application" do
    visit job_applications_url
    click_on "New job application"

    fill_in "Applied through", with: @job_application.applied_through
    fill_in "Company", with: @job_application.company
    fill_in "Contact email", with: @job_application.contact_email
    fill_in "Contact name", with: @job_application.contact_name
    fill_in "Contact role", with: @job_application.contact_role
    fill_in "Current salary", with: @job_application.current_salary
    fill_in "Final outcome", with: @job_application.final_outcome
    fill_in "General notes", with: @job_application.general_notes
    fill_in "Location", with: @job_application.location
    fill_in "Position", with: @job_application.position
    fill_in "Salary range", with: @job_application.salary_range
    fill_in "Skill focus", with: @job_application.skill_focus
    fill_in "Status", with: @job_application.status
    click_on "Create Job application"

    assert_text "Job application was successfully created"
    click_on "Back"
  end

  test "should update Job application" do
    visit job_application_url(@job_application)
    click_on "Edit this job application", match: :first

    fill_in "Applied through", with: @job_application.applied_through
    fill_in "Company", with: @job_application.company
    fill_in "Contact email", with: @job_application.contact_email
    fill_in "Contact name", with: @job_application.contact_name
    fill_in "Contact role", with: @job_application.contact_role
    fill_in "Current salary", with: @job_application.current_salary
    fill_in "Final outcome", with: @job_application.final_outcome
    fill_in "General notes", with: @job_application.general_notes
    fill_in "Location", with: @job_application.location
    fill_in "Position", with: @job_application.position
    fill_in "Salary range", with: @job_application.salary_range
    fill_in "Skill focus", with: @job_application.skill_focus
    fill_in "Status", with: @job_application.status
    click_on "Update Job application"

    assert_text "Job application was successfully updated"
    click_on "Back"
  end

  test "should destroy Job application" do
    visit job_application_url(@job_application)
    click_on "Destroy this job application", match: :first

    assert_text "Job application was successfully destroyed"
  end
end
