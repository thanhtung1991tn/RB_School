class EquipmentHasRoom < ApplicationRecord
  belongs_to :room
  belongs_to :equipment
end
