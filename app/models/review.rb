class Review < ActiveRecord::Base
  belongs_to :game
end
class User < ActiveRecord::Base
  has_many (:reviews)
  has_many :(games, through: :reviews)
end