class Title < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '宿泊先' },
    { id: 3, name: '飛行機' },
    { id: 4, name: '新幹線' },
    { id: 5, name: 'レンタカー' },
    { id: 6, name: 'バス' },
  ]

  include ActiveHash::Associations
  has_many :pins
end
