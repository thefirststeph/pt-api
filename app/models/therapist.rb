class Therapist < ApplicationRecord
  has_many :therapist_client_categories
  has_many :therapist_client_ethnicities
  has_many :therapist_client_languages
  has_many :therapist_issues
  has_many :therapist_target_issues
  has_many :client_categories, through: :therapist_client_categories
  has_many :client_ethnicities, through: :therapist_client_ethnicities
  has_many :client_languages, through: :therapist_client_languages
  has_many :issues, through: :therapist_issues
  has_many :target_issues, through: :therapist_target_issues
end


