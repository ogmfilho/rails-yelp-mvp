class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  cat_list = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: cat_list,
                                    message: "%{value} is not a valid category" }
end
