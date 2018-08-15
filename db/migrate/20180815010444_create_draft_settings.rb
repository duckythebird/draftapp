class CreateDraftSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :draft_settings do |t|
      t.integer :type
      t.integer :teams
      t.references :league, foreign_key: true
    end
  end
end
