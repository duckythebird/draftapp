class AddDraftToDraftPicks < ActiveRecord::Migration[5.2]
  def change
    add_reference :draft_picks, :draft, foreign_key: true
  end
end
