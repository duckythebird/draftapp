class RemoveLeagueAndAddDraftToDraftSettings < ActiveRecord::Migration[5.2]
  def change
    add_reference :draft_settings, :draft, foreign_key: true
    remove_reference :draft_settings, :league
  end
end
