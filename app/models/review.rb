class Review < ApplicationRecord
  belongs_to :backyard
  belongs_to :user
end
