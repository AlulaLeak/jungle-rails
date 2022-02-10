class ProductsController < ApplicationController
  
  def index
    @products = Product.all.order(created_at: :desc)
<<<<<<< HEAD
    # render index is implicit
=======
    puts @products
    puts "columns of the users table", ActiveRecord::Base.connection.columns("users").to_yaml
>>>>>>> master
  end

  def show
    @product = Product.find params[:id]
  end

end
