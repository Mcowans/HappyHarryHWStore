class HomeController < ApplicationController
  def index
  end

  def login
    
  end

  def signup
    
  end

  def contact

  end

  def cart
    @cart = Cart.where(:customer_id => current_customer.id ).all
    #abort @cart.inspect
  end
end
