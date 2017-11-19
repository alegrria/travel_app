class Flight < ApplicationRecord
  has_and_belongs_to_many :austauschschulers
  validates :departure, presence: true
  validates :arrival, presence: true
  validates :arrival_date, presence: true
  validates :departure_time, presence: true
  validate :validate_flight_times
  private
  def validate_flight_times
    if arrival_date.present? and departure_time.present? && departure_time.to_i > arrival_date.to_i
      errors.add(:arrival_date, 'Arrival time cannot be before departure')
    end
  end
end
