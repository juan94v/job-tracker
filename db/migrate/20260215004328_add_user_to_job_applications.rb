class AddUserToJobApplications < ActiveRecord::Migration[8.0]
  def up
    # Add column allowing null initially
    add_reference :job_applications, :user, null: true, foreign_key: true

    # If there are existing job applications, we need to handle them
    # For now, we'll leave them without a user (null)
    # They'll be cleaned up or assigned after first user registers

    # Once data is handled, we can make it not null in a separate migration
  end

  def down
    remove_reference :job_applications, :user
  end
end
