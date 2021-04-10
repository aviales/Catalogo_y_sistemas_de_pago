class Oneclick < ApplicationRecord
  has_many :transbanks, as: :category
end
