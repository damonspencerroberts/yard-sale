class Backyard < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :address, :price, :description, :max_capacity, presence: true
  validates :address, uniqueness: true
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include PgSearch::Model
  pg_search_scope :search,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
