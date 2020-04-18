class SharedOrder < ApplicationRecord
  belongs_to :source
  has_and_belongs_to_many :users

  enum unit: { inactive: 'inactive', active: 'active', cancelled: 'cancelled', completed: 'completed' }
end
