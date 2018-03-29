class Doctor < ApplicationRecord
  validates_presence_of :en_name, :ar_name, :en_bio, :ar_bio, :en_schedule, :ar_schedule, :department_id, :image

  belongs_to :department
  has_many :comments

  mount_uploader :image, DoctorImageUploader

  scope :work_in_department, -> (department_id) { where(department_id: department_id) if department_id.present? }
end