class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :banner, presence: true
end
