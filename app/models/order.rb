class Order < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :delete_all
  accepts_nested_attributes_for :bookings

  enum plan_type: {normal: 0, exclusive: 1}
end
