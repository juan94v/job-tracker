class CreateJobApplications < ActiveRecord::Migration[8.0]
  def change
    create_table :job_applications do |t|
      t.string :company
      t.string :position
      t.string :status
      t.string :location
      t.string :salary_range
      t.decimal :current_salary
      t.text :skill_focus
      t.string :applied_through
      t.text :general_notes
      t.text :final_outcome
      t.string :contact_name
      t.string :contact_email
      t.string :contact_role

      t.timestamps
    end
  end
end
