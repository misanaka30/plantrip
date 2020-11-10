class Prefecture < ApplicationRecord
  has_many :prefecture_users
  has_many :users, through: :prefecture_users, dependent: :destroy
  has_many :places, dependent: :destroy
  has_many :pins, dependent: :destroy
  
  validates :name, presence: true
end
