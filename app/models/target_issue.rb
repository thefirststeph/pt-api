class TargetIssue < ApplicationRecord
  has_many :therapist_target_issues
  has_many :therapists, through: :therapist_target_issues
end
