class AddUserToLeagueUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :league_users, :user, foreign_key: true
  end
end
