class ApiKey < ApplicationRecord
  before_validation :generate_access_key
  validates_presence_of :access_key

  private

  def generate_access_key
    begin
      self.access_key = SecureRandom.hex
    end while self.class.exists?(access_key: access_key)
  end
end