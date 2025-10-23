json.extract! interview_stage, :id, :job_application_id, :name, :order, :status, :scheduled_date, :completed_date, :follow_up_date, :feedback, :created_at, :updated_at
json.url interview_stage_url(interview_stage, format: :json)
