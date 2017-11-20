class Austauschschuler < ApplicationRecord
  has_and_belongs_to_many :flights
  validates :name, presence: true
  validates :family_name, presence: true

  validates :birthday, :presence => true
  validate :validate_age
  private
  def validate_age
    if birthday.present? && birthday.to_datetime.to_i > 14.years.ago.to_i
      errors.add(:birthday, 'You should be over 14 years old.')
    end
  end

  validates :email, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, on: :update

  validates :arrival, presence: true
  validates :departure, presence: true
end
