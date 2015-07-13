class UserSerializer < ActiveModel::Serializer

attributes :username, :name, :weekly_score, :total_score

has_many :game_weeks

end
