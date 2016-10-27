class Booking < ActiveRecord::Base
  belongs_to :order
  validates :restaurant_name, presence: true
  validates :date, presence: true
  validates :member_num, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
