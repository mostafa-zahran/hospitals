class HospitalsSpecialty < ApplicationRecord
  validates_presence_of :hospital_id, :specialty_id

  belongs_to :hospital
  belongs_to :specialty
end