class Therapist < ApplicationRecord
  has_many :therapist_client_categories
  has_many :therapist_client_ethnicities
  has_many :therapist_client_languages
  has_many :therapist_issues
  has_many :therapist_target_issues
end


