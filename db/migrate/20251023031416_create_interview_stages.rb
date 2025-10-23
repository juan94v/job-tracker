class CreateInterviewStages < ActiveRecord::Migration[8.0]
  def change
    create_table :interview_stages do |t|
      t.references :job_application, null: false, foreign_key: true
      t.string :name
      t.integer :order
      t.string :status
      t.datetime :scheduled_date
      t.datetime :completed_date
      t.date :follow_up_date
      t.text :feedback

      t.timestamps
    end
  end
end
