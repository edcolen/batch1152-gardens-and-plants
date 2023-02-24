class Plant < ApplicationRecord
  belongs_to :garden

  validates :name, :image, presence: true
end
