class User < ApplicationRecord
  validates :name, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { in: 1..10 }
  has_secure_password
end
