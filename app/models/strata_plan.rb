class StrataPlan < ApplicationRecord
  has_many :residential_units
  has_many :chat_rooms
end
