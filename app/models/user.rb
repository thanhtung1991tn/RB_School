class User < ApplicationRecord
  has_many :book_rooms
  has_many :rooms, :through => :book_rooms
end
