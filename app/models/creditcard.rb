class Creditcard < ApplicationRecord
  has_many :transbanks, as: :category
end
