class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italiand djapanesed dfrenchd dbelgian) }
  has_many :reviews, dependent: :destroy
end
