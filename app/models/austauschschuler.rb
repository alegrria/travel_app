class Austauschschuler < ApplicationRecord
  has_and_belongs_to_many :flights
  validates :name, presence: true
  validates :family_name, presence: true

  validates :birthday, :presence => true
  validate :validate_age
  private
  def validate_age
    if birthday.present? && birthday.to_i > 14.years.ago.to_i
      errors.add(:birthday, 'You should be over 14 years old.')
    end
  end

  validates :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, on: :update}

  validates :arrival_time, presence: true
  validates :departure_time, presence: true
  validate :validate_flight_times
  private
  def validate_flight_times
    if arrival_time.present? and departure_time.present? && departure_time.to_i > arrival_time.to_i
      errors.add(:arrival_time, 'Arrival time cannot be before departure')
    end
  end
end
