class Destination < ApplicationRecord
  validates_presence_of :name

  validate :validate_dates

  def validate_dates
    errors.add(:arrive_at, 'must be before depart_at') if arrive_at > depart_at
  end
end
