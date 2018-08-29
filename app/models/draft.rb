class Draft < ApplicationRecord
  belongs_to :league
  has_one :draft_setting
end
