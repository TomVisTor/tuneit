class Reservation < ApplicationRecord
  belongs_to :renter, class_name: "User"
  belongs_to :instrument

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
end
