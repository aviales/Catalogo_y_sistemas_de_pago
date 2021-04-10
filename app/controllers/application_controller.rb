class ApplicationController < ActionController::Base

  def current_order
   
    order = Order.where(state: "created").last
    if order.nil?
      order = Order.create(state: "created")
    end
    return order
    

    nil
  end
end
