require 'date'

class Order < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :delete_all
  accepts_nested_attributes_for :bookings, allow_destroy: true

  enum plan_type: {normal: 0, exclusive: 1}

  def set_date
    start_date = self.bookings.first.date
    end_date = self.bookings.first.date
    self.bookings.each do |booking|
      if start_date > booking.date
        start_date = booking.date
      end
      if end_date < booking.date
        end_date = booking.date
      end
      self.start_date = start_date
      self.end_date = end_date
    end
  end
end
