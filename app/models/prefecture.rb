class Prefecture < ApplicationRecord
  has_many :prefecture_users
  has_many :users, through: :prefecture_users
  has_many :places
  
  validates :name, presence: true
end
