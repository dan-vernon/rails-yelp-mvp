class Restaurant < ApplicationRecord
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :phone_number, presence: true#, numericality: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }



end
