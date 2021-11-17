class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  VALID_ARRAY = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: VALID_ARRAY }
end
