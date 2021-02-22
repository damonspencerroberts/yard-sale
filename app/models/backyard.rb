class Backyard < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :address, :price, :description, :max_capacity, presence: true
  validates :address, uniqueness: true
  has_many_attached :photos
end