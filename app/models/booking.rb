class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service
  validates :status, presence: true
  validates_associated :user
  validates_associated :service
end
