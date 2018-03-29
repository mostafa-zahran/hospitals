require 'bcrypt'

class User < ApplicationRecord
  include BCrypt
  validates_presence_of :email, :password_hash, :first_name, :last_name, :api_token
  before_validation :generate_api_token

  has_many :comments

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def as_json(options)
    super(:only => [:email, :first_name, :last_name, :api_token, :id])
  end

  private

  def generate_api_token
    self.api_token = Password.create(password_hash)
  end
end
