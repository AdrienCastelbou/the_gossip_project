class User < ApplicationRecord
  has_many :gossips
  has_many :comments
  belongs_to :city
end
