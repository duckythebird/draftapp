class Player < ApplicationRecord
    belongs_to :position
    belongs_to :nfl_team
end
