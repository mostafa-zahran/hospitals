class Department < ApplicationRecord
  validates_presence_of :en_name, :ar_name, :hospital_id, :image
  belongs_to :hospital
  has_many :doctors

  mount_uploader :image, ImageUploader

  scope :in_hospital, -> (hospital_id) { where(hospital_id: hospital_id) if hospital_id.present? }
end