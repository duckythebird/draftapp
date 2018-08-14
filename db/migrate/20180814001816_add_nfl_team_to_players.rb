class AddNflTeamToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_reference :players, :nfl_team, foreign_key: true
  end
end
