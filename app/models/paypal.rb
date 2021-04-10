class Paypal < ApplicationRecord
  has_many :payments, as: :category
end
