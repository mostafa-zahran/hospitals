class Governorate < ApplicationRecord
  validates_presence_of :en_name, :ar_name

  has_many :hospitals
end