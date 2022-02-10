class ProductsController < ApplicationController
  
  def index
    @products = Product.all.order(created_at: :desc)
    puts @products
    puts "columns of the users table", ActiveRecord::Base.connection.columns("users").to_yaml
  end

  def show
    @product = Product.find params[:id]
  end

end
