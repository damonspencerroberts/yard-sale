class Review < ApplicationRecord
  belongs_to :backyard
  belongs_to :user
  validates :user_id, :backyard_id, :content, :rating, presence: true
  validates :user_id, uniqueness: { scope: :backyard_id }
end
