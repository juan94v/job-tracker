json.extract! job_application, :id, :company, :position, :status, :location, :salary_range, :current_salary, :skill_focus, :applied_through, :general_notes, :final_outcome, :contact_name, :contact_email, :contact_role, :created_at, :updated_at
json.url job_application_url(job_application, format: :json)
