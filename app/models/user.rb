class User < ApplicationRecord
  validates :username, :email, uniqueness: true, {presence: true}
  validates :password, {presence: true}

  has_many :photos
  has_many :restaurants, through: :photos

  has_secure_password
end
