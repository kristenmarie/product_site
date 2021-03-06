class ProductsController < ApplicationController

  def home
    @most_reviewed = Product.most_reviews
    @usa_made = Product.made_in_usa
    @recent_products = Product.recently_added
  end

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product has been added!"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product has been updated!"
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product has been deleted!"
    redirect_to products_path
  end


private
  def product_params
    params.require(:product).permit(:name, :cost, :origin)
  end
end
