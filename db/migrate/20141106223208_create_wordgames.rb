class CreateWordgames < ActiveRecord::Migration
  def change
     create_table :wordgames do |t|
      t.references(:user)
      t.string :word 

      t.timestamps
  end
end
end
