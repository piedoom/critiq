class User < ApplicationRecord
  has_many :projects, dependent: :destroy

  def self.from_omniauth(auth_hash)
    user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
    user.username = auth_hash['info']['name']
    user.save!
    user
  end
end
