class AddLeagueToLeagueUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :league_users, :league, foreign_key: true
  end
end
