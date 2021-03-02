class Instrument < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :reservations

  validates :name, presence: true
  validates :family, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
