class Project < ApplicationRecord
  has_many :items, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true
end
