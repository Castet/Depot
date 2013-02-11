class StoreController < ApplicationController
  def increment_count
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
  
  def index
    @count = increment_count
    @show_counter = @count if @count > 5
    @products = Product.order(:title)
  end
end
