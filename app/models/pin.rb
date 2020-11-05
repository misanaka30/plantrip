class Pin < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
   belongs_to :title


 belongs_to :prefecture
 belongs_to :user

 has_one_attached :image

 validates :title_id, numericality: { other_than: 1 } 

end
