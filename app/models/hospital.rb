class Hospital < ApplicationRecord
  validates_presence_of :en_name, :ar_name, :phone, :address, :lat, :lng, :governorate_id

  belongs_to :governorate
  has_many :departments
  has_many :hospitals_specialties
  has_many :specialties, through: :hospitals_specialties

  scope :in_governorate , -> (governorate_id){ where(governorate_id: governorate_id) if governorate_id.present? }
  scope :has_specialty, -> (specialty_id) { joins(:specialties).where(specialties: {specialty_id: specialty_id} ) if specialty_id.present?}
end