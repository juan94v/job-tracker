class InterviewStage < ApplicationRecord
  belongs_to :job_application

  enum :status, {
    pending: "pending",
    scheduled: "scheduled",
    completed: "completed",
    passed: "passed",
    failed: "failed"
  }

  # Validaciones
  validates :name, presence: true
  validates :order, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :status, presence: true
end
