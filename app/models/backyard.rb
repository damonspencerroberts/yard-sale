class Backyard < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  validates :name, :address, :price, :description, :max_capacity, presence: true
  validates :photos, presence: true
  validates :address, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
