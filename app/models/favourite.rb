class Favourite < ApplicationRecord
  belongs_to :backyard
  belongs_to :user
end
