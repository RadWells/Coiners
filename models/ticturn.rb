class Ticturn < ActiveRecord::Base
  belongs_to :tictactoe
  has_many :users
end
