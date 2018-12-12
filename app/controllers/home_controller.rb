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

    @products = Array.new

    for item in @cart do
      temp_product = Array.new
      temp_product << Product.find_by_product_id(item.product_id).description
      temp_product.push(Product.find_by_product_id(item.product_id).price)
      temp_product.push(item.quantity)
      temp_product.push(item.product_id)
      @products << temp_product
    end
    #abort @products.inspect
  end

  def place_order
    
    @products = get_products_in_cart()
    
    if params[:update_cart]
      product_ids = Array.new
      product_qty = Array.new

      for val in params do
        if val != "update_cart" and val != "controller" and val != "action" and val != "products"
          if val.match("product_id")
            product_ids.push("product_id" => params[val])
          else
            product_qty.push("qty" => params[val])
          end
        end
      end      
      
      products = Array.new
      j = 0
     for i in product_ids do      
        temp_pro = ""
        temp_pro = i.merge!(product_qty[j])
        products << temp_pro
        j = j+1       
     end

     #abort products.inspect

      @cart = Cart.where(:customer_id => current_customer.id ).all
      for item in @cart do
        for pro in products do
          #abort pro["product_id"].inspect
          if item.product_id == pro["product_id"]
            item.quantity = pro["qty"]
            item.save
          end
        end
      end

      redirect_to "/cart"    

    else
      
      last_order = Order.last
      order_id = last_order.order_id+1
      for x in @products do
        @order = Order.find_or_create_by(:order_id => order_id, :customer_id => current_customer.id, :product_id => x[3], :amount => x[2], :date => Time.new)
      end

      Cart.where(:customer_id => current_customer.id ).destroy_all
      

      redirect_to "/orders"
    end    
    
    
  end

  def get_products_in_cart
    @cart = Cart.where(:customer_id => current_customer.id ).all

    @products = Array.new

    for item in @cart do
      temp_product = Array.new
      temp_product << Product.find_by_product_id(item.product_id).description
      temp_product.push(Product.find_by_product_id(item.product_id).price)
      temp_product.push(item.quantity)
      temp_product.push(item.product_id)
      @products << temp_product
    end
    
    return @products
  end
end
