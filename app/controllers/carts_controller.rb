class CartsController < ApplicationController

  def update
    product = params[:cart][:product_id]
    quantity = params[:cart][:quantity]

    current_order.add_product(product, quantity)

    redirect_to root_url, notice: "Product added successfuly"
  end

  def show
    order = Order.last
    if order[:state] == "completed"
      @actual_order = nil
    else order[:state] == "created"
      @actual_order = order
    end
    
  end

  def pay_with
    order = Order.find(params[:cart][:order_id])

    
      case cart_params[:payment].downcase
      when "stripe"
        @stripe = Stripe.create
        @payment = Payment.create(category: @stripe, state: "completed", total: order.total, order_id: order.id)
        order.state = "completed"
        respond_to do |format|
        format.html { redirect_to root_path, notice: 'payed successfully'}
        end
      when "paypal"
        @paypal = Paypal.create
        @payment = Payment.create(category: @paypal, state: "completed", total: order.total, order_id: order.id)
        order.state = "completed"
        respond_to do |format|
          format.html { redirect_to root_path, notice: 'payed successfully'}
        end
      when "transbank"
        @transbank = Transbank.create
        @payment = Payment.create(category: @transbank, state: "completed", total: order.total, order_id: order.id)
        order.state = "completed"
        respond_to do |format|
          format.html { redirect_to root_path, notice: 'payed successfully'}
        end
      else
        redirect_to cart_path, notice: 'choose correct payment option'
      end
    
    #@payment = Payment.new(cart_params)
    
    
   # Payment.create(
    #  order_id: order.id,
     # payment_method_id: payment_method.id,
      #state: "processing",
      #total: order.total,
      #token: response.token
    #)

    
  end



  # def process_payment
  #   #update object states
    
  #   order.state = "completed"

  # end
  private

  def cart_params
    params.require(:cart).permit(:order_id, :payment)
  end
end
