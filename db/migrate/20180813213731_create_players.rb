class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :team_id
      t.integer :position_id
      t.boolean :drafted

      t.timestamps
    end
  end
end
