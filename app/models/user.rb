class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: { in: 1..10 }
  has_secure_password
end
