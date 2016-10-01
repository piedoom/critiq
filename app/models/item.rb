# one "page" to be critiqued (one image)
class Item < ApplicationRecord
  belongs_to :project
  has_attached_file :image, styles: { thumb: "300x300>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
