class ClientCategory < ApplicationRecord
  has_many :therapist_client_categories
  has_many :therapists, through: :therapist_client_categories
end
