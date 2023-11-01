class Product < ApplicationRecord
  belongs_to :user
  has_many :feedbacks, dependent: :destroy
  has_many_attached :images
  has_many :orders
  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true
end
