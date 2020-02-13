class User < ApplicationRecord
  has_secure_password
  has_many :gossips
  has_many :comments
  belongs_to :city
  has_many :likes, dependent: :destroy
end
