class TherapistClientCategory < ApplicationRecord
  belongs_to :therapists
  belongs_to :client_categories
end


