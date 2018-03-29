class Specialty < ApplicationRecord
  validates_presence_of :en_name, :ar_name

  has_many :hospitals_specialties
  has_many :hospitals, through:  :hospitals_specialties
end