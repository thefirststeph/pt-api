class Issue < ApplicationRecord
    has_many :therapist_issues
    has_many :therapists, through: :therapist_issues
end
