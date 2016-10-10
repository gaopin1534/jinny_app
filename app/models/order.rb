class Order < ActiveRecord::Base
  enum plan_type: [:normal, :exclusive]
end
