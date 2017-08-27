class Artist < ApplicationRecord
  validates :name, presence: true, length: {maximum: 130, minimum: 3}
  validates :description, presence: true, length: {maximum: 130, minimum: 3}
end
