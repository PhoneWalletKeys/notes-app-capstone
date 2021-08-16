class User < ApplicationRecord
  has_many :notes
  has_secure_password
  validates :name, length: {maximum: 20}
  validates :password, length: {in: 6..20}
  validates :email, presence: true, uniqueness: true  
end
