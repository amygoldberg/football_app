class GameWeekSerializer < ActiveModel::Serializer

attributes :week_number

has_many :games
# belongs_to :user

end
