class Pin < ApplicationRecord
  belongs_to :prefecture
  belongs_to :user
  has_one_attached :image

  validates :title_id, numericality: { other_than: 1 } 

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :title
end
