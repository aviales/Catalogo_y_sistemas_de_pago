class Payment < ApplicationRecord
  belongs_to :category, polymorphic: true
  belongs_to :order
end
