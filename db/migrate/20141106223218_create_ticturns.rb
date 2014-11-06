class CreateTicturns < ActiveRecord::Migration
  def change
     create_table :ticturns do |t|
      t.string :title
      t.string :body
  end
end
end
