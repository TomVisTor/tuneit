class Instrument < ApplicationRecord
  FAMILY = ['Vents', 'Cordes', 'Cuivres', 'Bois', 'Percussions', 'Other']

  belongs_to :owner, class_name: "User"
  has_many :reservations
  # Photo
  has_one_attached :photo

  validates :name, presence: true
  validates :family, presence: true, inclusion: { in: FAMILY, message: 'Category is not valid' }
  validates :price_per_day, presence: true
  validates :description, presence: true
end
