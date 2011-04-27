class StoreController < ApplicationController
  def index
      @products = Product.all
      increment_count
      @cart = current_cart
  end

end
