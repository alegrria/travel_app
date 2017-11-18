class Austauschschuler < ApplicationRecord
  has_and_belongs_to_many :flights
  validates :name, presence: true
  validates :family_name, presence: true
  validates :email, presence: true
end
