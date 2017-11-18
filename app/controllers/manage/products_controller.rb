class Manage::ProductsController < Manage::ApplicationController
  before_action :authenticate_admin!
  
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "创建成功"
      redirect_to manage_products_path
    else
      flash[:error] = "创建失败"
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:success] = "更新成功"
      render :edit
    else
      flash[:error] = "更新失败"
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to manage_products_path
  end

  private
    def product_params
      params.require(:product).permit(:title, :img, :content)
    end
end
