class User < ActiveRecord::Base
  include BCrypt
  has_many :ticturns
  has_many :tictactoes, through: :ticturns
  has_many :word_games

  def password
    @password ||= Password.new(self.password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end