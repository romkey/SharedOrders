class OrderItem < ApplicationRecord
  belongs_to :shared_order
  belongs_to :user
  belongs_to :available_item
end
