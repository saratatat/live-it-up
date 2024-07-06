class Service < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates_associated :user
  has_one_attached :image
end
