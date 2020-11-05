class Place < ApplicationRecord
  belongs_to :prefecture
  belongs_to :user
  
  validates :url, presence: true
  validates :name, presence: true
end
