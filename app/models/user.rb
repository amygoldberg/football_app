class User < ActiveRecord::Base
  has_many :game_weeks
end
