class Manage::BrandsController < Manage::ApplicationController
  before_action :set_brand, only: [:index, :edit, :update]
  
  def index
    if @brand
      redirect_to edit_manage_brand_path(@brand)
    else
      redirect_to new_manage_brand_path
    end
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      flash[:success] = "内容更新成功"
      redirect_to manage_brands_path
    else
      flash[:error] = "内容更新失败"
      render :new
    end
  end

  def edit
  end

  def update
    if @brand.update(brand_params)
      flash[:success] = "内容更新成功"
      redirect_to manage_brands_path
    else
      flash[:error] = "内容更新失败"
      render :edit
    end
  end

  private
    def set_brand
      @brand = Brand.first
    end

    def brand_params
      params.require(:brand).permit(:content)
    end
end
