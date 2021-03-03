class Reservation < ApplicationRecord
  STATUSES = ["Pending", "Accepted", "Declined", "Cancelled"]
  belongs_to :renter, class_name: "User"
  belongs_to :instrument

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
  validates :status, presence: true, inclusion: { in: STATUSES }
end
