class AddPositionToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_reference :players, :position, foreign_key: true
  end
end
