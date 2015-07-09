class Game < ActiveRecord::Base
  has_many :teams
  belongs_to :game_weeks
end
