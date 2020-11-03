class Place < ApplicationRecord
  belongs_to :prefecture
  belongs_to :user
  has_one_attached :image

  validates :name, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
