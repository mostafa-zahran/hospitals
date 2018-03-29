class Specialty < ApplicationRecord
  validates_presence_of :en_name, :ar_name

  has_and_belongs_to_many :hospitals
end