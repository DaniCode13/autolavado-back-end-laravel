class Entry < ApplicationRecord
  validates :price, :description, presence: true
end
