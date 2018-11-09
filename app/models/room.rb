class Room < ApplicationRecord
  ROOM_ATTRIBUTES = [:name, :area, :qty]

  validates :name, presence: {message: I18n.t("name_require")}
  validates :area, presence: {message: I18n.t("area_require")}
  validates :qty, presence: {message: I18n.t("qty_require")}
  validates :area, :qty, numericality: {message: I18n.t("num_require")}
end
