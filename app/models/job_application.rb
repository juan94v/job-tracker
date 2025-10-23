class JobApplication < ApplicationRecord
  has_many :interview_stages, dependent: :destroy

  enum :status, {
    applied: "applied",
    screening_rejected: "screening_rejected",
    in_progress: "in_progress",
    rejected: "rejected",
    accepted: "accepted",
    offer_declined: "offer_declined",
    withdrawn: "withdrawn"
  }

  # Validaciones
  validates :company, presence: true
  validates :position, presence: true
  validates :status, presence: true
  validates :current_salary, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
end
