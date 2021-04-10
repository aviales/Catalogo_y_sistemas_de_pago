class Order < ApplicationRecord
  before_create -> { generate_number(hash_size) }

  has_many :order_items
  has_many :products, through: :order_items
  has_one :payment


  def generate_number(size)
    self.number ||= loop do
      random = random_candidate(size)
      break random unless self.class.exists?(number: random)
    end
  end

  def random_candidate(size)
    "#{hash_prefix}#{Array.new(size){rand(size)}.join}"
  end

  def hash_prefix
    "BO"
  end

  def hash_size
    9
  end



  def add_product(product_id, quantity)
    product = Product.find(product_id)
    if product && (product.stock > 0)
      order_items.create(product_id: product.id, quantity: quantity, price: product.price)
      compute_total
    end
  end
 def compute_total
    sum = 0
    order_items.each do |item|
      sum += item.price
    end
    update_attribute(:total, sum)
  end

end
