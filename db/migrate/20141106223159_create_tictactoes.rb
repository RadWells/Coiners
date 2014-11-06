class CreateTictactoes < ActiveRecord::Migration
  def change
     create_table :tictactoes do |t|
      t.references(:user)
      t.string :body
  end
end
end
