class GameSerializer < ActiveModel::Serializer

attributes :status, :spread, :game_date

has_many :teams

end
