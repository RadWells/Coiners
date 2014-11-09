class CreateWordGames < ActiveRecord::Migration
  def change
     create_table :word_games do |t|
      t.references :user
      
      t.string :word
      t.string :game_state

      t.boolean :complete, default: false

      t.timestamps
  end
end
end
