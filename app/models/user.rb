class User < ApplicationRecord
  has_secure_password
  has_many :gossips
  has_many :comments
  belongs_to :city
  has_many :likes, dependent: :destroy

  def remember(remember_token)
    remember_digest = BCrypt::Password.create(remember_token)
    self.update(remember_digest: remember_digest)
  end
end
