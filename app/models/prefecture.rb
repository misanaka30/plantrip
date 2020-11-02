class Prefecture < ApplicationRecord
  has_many :prefecture_users
  has_many :users, through: :prefecture_users

  validates :name, presence: true
end
