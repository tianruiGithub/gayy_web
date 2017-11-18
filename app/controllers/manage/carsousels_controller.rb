class Manage::CarsouselsController < Manage::ApplicationController
  before_action :authenticate_admin!
  
  def index
    @carsousels = Carsousel.all
  end

  def new
    @carsousel = Carsousel.new
  end

  def create
    @carsousel = Carsousel.new(carsousel_params)
    if @carsousel.save
      flash[:success] = "创建成功"
      redirect_to manage_carsousels_path
    else
      flash[:error] = "创建失败"
      render :new
    end
  end

  def edit
    @carsousel = Carsousel.find(params[:id])
  end

  def update
    @carsousel = Carsousel.find(params[:id])
    if @carsousel.update(carsousel_params)
      flash[:success] = "更新成功"
      render :edit
    else
      flash[:error] = "更新失败"
      render :edit
    end
  end

  def destroy
    @carsousel = Carsousel.find(params[:id])
    @carsousel.destroy
    redirect_to manage_carsousels_path
  end

  private
    def carsousel_params
      params.require(:carsousel).permit(:no, :file)
    end
end
