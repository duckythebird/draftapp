class CreateLeagueUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :league_users do |t|
      t.string :team_name
      t.boolean :admin
      t.boolean :owner
    end
  end
end
