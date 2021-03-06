class User < ActiveRecord::Base
  has_many :game_weeks
  has_many :games, through: :game_weeks

  # authentication model
  has_secure_password

  before_create :set_token
  after_find :fix_up_token

  validates :email, uniqueness: true

  def authenticate_with_new_token(password)
    authenticate_without_new_token(password) && new_token
  end

  # every time you authenticate you get a new token after
  alias_method_chain :authenticate, :new_token

  private

  # self is a pointer to the object that it is operating on
  def set_token
    self.token = SecureRandom.hex(16)
  end

  # unconditionally create and set a new token
  def new_token
    update_columns(token: set_token, updated_at: Time.current)
  end

  # expire old token
  def fix_up_token
    new_token if updated_at < 1.day.ago
  end

end
