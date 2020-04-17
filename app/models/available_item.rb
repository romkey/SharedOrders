class AvailableItem < ApplicationRecord
  belongs_to :source
  enum unit: { case: 1, pound: 2, item: 3 }
end
