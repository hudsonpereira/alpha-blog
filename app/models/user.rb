class User < ApplicationRecord
  has_secure_password

  has_many :comments
  has_many :articles

  before_save do
    self.email = email.downcase
  end

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
