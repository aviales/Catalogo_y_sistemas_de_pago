class Webpay < ApplicationRecord
  has_many :transbanks, as: :category
end
