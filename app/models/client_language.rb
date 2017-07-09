class ClientLanguage < ApplicationRecord
  has_many :therapist_client_languages
  has_many :therapists, through: :therapist_client_languages
end
