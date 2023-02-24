class Garden < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :banner, presence: true
end
