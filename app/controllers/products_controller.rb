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

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product Created!"
      redirect_to @product
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end



def update
  @product = Product.find(params[:id])
  if @product.update_attributes(product_params)
    flash[:success] = 'Product updated'
    redirect_to @product
    # Handle a successful update.
  else
    render 'edit'

  end
end



def destroy
  @product = Product.destroy(params[:id])
  flash[:success] = 'Product deleted'
  redirect_to request.referrer || root_url
end

private

  def product_params
    params.require(:product).permit(:content, :picture, :name, :price, :brand, :category)
  end

  # def product_params
  #   params.require(:product).permit(:name, :price)
  # end

  def set_product
    @product = Product.find(params[:id])
  end
end
