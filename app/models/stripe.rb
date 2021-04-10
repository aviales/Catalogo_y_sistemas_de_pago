class Stripe < ApplicationRecord
  has_many :payments, as: :category
end
