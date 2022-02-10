class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USERNAME'], password: ENV['ADMIN_PASS'], except: [:index]
  def show
    @number_of_products = Product.count()
    @number_of_categories = Category.count()
    
    puts "this the products:", @number_of_categories
  end
end