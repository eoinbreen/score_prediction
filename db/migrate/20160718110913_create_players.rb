class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|

      t.string :name
      t.string :teamId
      t.string :position
      t.integer :playChance
      
      t.timestamps null: false
    end
  end
end
