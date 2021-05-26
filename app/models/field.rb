class Field < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates :name, presence: true
  validates :category, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
