class Society < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :url, presence: true
  validates :phone_number, presence: true
end
