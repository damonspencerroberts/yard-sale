class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :backyard
  validates :date, :number_of_guests, presence: true
end
