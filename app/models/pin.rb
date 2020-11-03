class Pin < ApplicationRecord
 belongs_to :prefecture
 belongs_to :user

 has_one_attached :image

 validates :name, presence: true
end
