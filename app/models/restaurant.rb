class Restaurant < ApplicationRecord

  validates :name, presence: true
  validates :adress, presence: true
  validates :phone_number, presence: true

end
