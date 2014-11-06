class TicTacToe < ActiveRecord::Base
has_many :ticturns
has_many :users through: :ticturns
end
