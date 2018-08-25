class CreateDrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :drafts do |t|
      t.references :league, foreign_key: true

      t.timestamps
    end
  end
end
