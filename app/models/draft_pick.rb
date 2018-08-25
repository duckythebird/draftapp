class DraftPick < ApplicationRecord
    belongs_to :draft
    belongs_to :user
    belongs_to :player
end