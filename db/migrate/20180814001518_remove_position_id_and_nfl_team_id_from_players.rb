class RemovePositionIdAndNflTeamIdFromPlayers < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :position_id
    remove_column :players, :team_id
  end
end
