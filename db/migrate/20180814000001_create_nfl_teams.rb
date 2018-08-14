class CreateNflTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :nfl_teams do |t|
      t.string :city
      t.string :mascot
      t.string :abbrev
      t.integer :bye_week

      t.timestamps
    end
  end
end
