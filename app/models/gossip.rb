class Gossip < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true
  validates_length_of :title, minimum: 3, maximum: 14
  validates :content, presence: true
  has_many :likes, dependent: :destroy
end
