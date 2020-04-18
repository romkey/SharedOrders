class AvailableItem < ApplicationRecord
  belongs_to :source
  enum unit: { case: 'case', pound: 'pound', item: 'item' }
end
