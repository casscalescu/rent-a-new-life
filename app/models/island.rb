class Island < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  CATEGORY = %w(Tidal Barrier Oceanic Coral Continental Artificial)

  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :price_per_night, presence: true, numericality: true
  validates :deposit, presence: true, numericality: true

  def category
    CATEGORY
  end
end
