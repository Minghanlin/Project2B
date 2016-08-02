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

end

def product_params
  params.require(:product).permit(:name, :price)
end

def set_product
  @product = Product.find(params[:id])
end

def update
  respond_to do |format|
    if @product.update(user_params)
      flash[:success] = 'Product was successfully updated.'
      format.html { redirect_to @product }
      format.json { render :show, status: :ok, location: @product }
    else
      format.html { render :edit }
      format.json { render json: @product.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
  @product.destroy
  respond_to do |format|
    format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
    format.json { head :no_content }
  end
end

private

  def product_params
    params.require(:product).permit(:content, :picture, :name, :price, :brand, :category)
  end
