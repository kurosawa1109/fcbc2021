class Assessment < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '美味しい' },
    { id: 2, name: 'とても美味しい' },
    { id: 3, name: '非常に美味しい' },
    { id: 4, name: '最高に美味しい' },
    { id: 5, name: '言葉にならない' },
  ]

  include ActiveHash::Associations
  has_many :posts
end