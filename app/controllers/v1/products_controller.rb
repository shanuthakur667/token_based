class V1::ProductsController < ApplicationController
  acts_as_token_authentication_handler_for User
  # before_action :requires_login
  def index
    render json: {
      data: Product.all.as_json
    }
  end

  def add_to_cart
    product = Product.find_by_id(params[:id])
    cart_product = product.cart_products.new(cart: current_user.cart, product_unit_price: product.price)
    if cart_product.save
      render json: {
        messages: "added Successfully",
        is_success: true,
        data: {product: product}
      }, status: :ok
    end
  end

  def cart_products
    render json: {
      data: current_user.cart.products.as_json
    }
  end
end
