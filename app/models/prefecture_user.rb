class PrefectureUser < ApplicationRecord
  belongs_to :prefecture
  belongs_to :user
end
