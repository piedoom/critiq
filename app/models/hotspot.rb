# one point on an item
class Hotspot < ApplicationRecord
  belongs_to :item
  has_many :comments, dependent: :destroy
end
