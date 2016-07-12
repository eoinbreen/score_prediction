class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      
      t.string :firstScorer
      t.string :predMaker
      t.integer :teamScore1
      t.integer :teamScore2
      
      t.timestamps null: false
    end
  end
end
