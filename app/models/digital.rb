class Digital < ApplicationRecord
  has_many :products, as: :category
  has_one :image, as: :imageable
end
