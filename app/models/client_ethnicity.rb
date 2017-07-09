class ClientEthnicity < ApplicationRecord
  has_many :therapist_client_ethnicities
  has_many :therapists, through: :therapist_client_ethnicities
end
