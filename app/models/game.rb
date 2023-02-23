class Game < ActiveRecord::Base
  has_many (reviews)
  has_many (:users, through: :reviews)
end
class Review < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
end
game = Game.first
game.reviews
# => [#<Review:0x00007ff71926dac8 id: 1, ...>, #<Review:0x00007ff71926d960 id: 2, ...>