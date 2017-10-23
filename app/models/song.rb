class Song < ApplicationRecord
  validates :name, presence: true, length: {maximum: 130, minimum: 3}
  validates :song, presence: true, length: {maximum: 130, minimum: 3}
end
