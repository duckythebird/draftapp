class DraftPick < ApplicationRecord
    belongs_to :League
    belongs_to :User
    belongs_to :Player
end