class GameWeekSerializer < ActiveModel::Serializer

attributes :week_number, :season

has_many :games

end
