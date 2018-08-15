class CreateDraftPicks < ActiveRecord::Migration[5.2]
  def change
    create_table :draft_picks do |t|
      t.references :player, foreign_key: true
      t.references :user, foreign_key: true
      t.references :league, foreign_key: true
    end
  end
end
