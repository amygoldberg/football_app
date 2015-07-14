class UserSerializer < ActiveModel::Serializer

attributes :id, :username, :name, :email, :weekly_score, :total_score, :token

has_many :game_weeks

end
