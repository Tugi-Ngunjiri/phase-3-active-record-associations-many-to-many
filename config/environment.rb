ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_all 'app/models'

# Get a game instance
game = Game.first
# Create a User instance
user = User.create(name: "Liza")
# Create a review that belongs to a game and a user
review = Review.create(score: 8, game_id: game.id, user_id: user.id)

review.game
# => #<Game:0x00007ff71a25f5d0 id: 1, title: "Diablo", genre: "Visual novel", ...>
review.user
# => #<User:0x00007ff71a26fe58 id: 1, name: "Liza", ...>

game.users
# => [#<User>, #<User>]

SELECT "users".*
FROM "users"
INNER JOIN "reviews"
  ON "users"."id" = "reviews"."user_id"
WHERE "reviews"."game_id" = 1


user = User.first
user.reviews
# => [#<Review:0x00007fc2a2ac01b8 id: 147, score: 8, ...>]
user.games
# => [#<Game:0x00007fc2a2b53710 id: 1, title: "Diablo", genre: "Visual novel", ...>]