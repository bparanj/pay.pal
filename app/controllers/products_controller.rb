class ProductsController < ApplicationController
  def index
    @products = Product.limit(10)
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end
  
end
