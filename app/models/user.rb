class User < ActiveRecord::Base
  has_many :game_weeks
  has_many :games, through: :game_weeks
end
