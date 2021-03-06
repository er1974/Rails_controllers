class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_path
    else
      redirect_to :back
    end
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)

    if product.save
      redirect_to products_path
    else
      redirect_to :back
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :pricing, :category_id)
    end
end
