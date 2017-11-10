class Manage::ToursController < Manage::ApplicationController
  before_action :set_tour, only: [:index, :edit, :update]
  
  def index
    if @tour
      redirect_to edit_manage_tour_path(@tour)
    else
      redirect_to new_manage_tour_path
    end
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save
      flash[:success] = "内容更新成功"
      redirect_to manage_tours_path
    else
      flash[:error] = "内容更新失败"
      render :new
    end
  end

  def edit
  end

  def update
    if @tour.update(tour_params)
      flash[:success] = "内容更新成功"
      redirect_to manage_tours_path
    else
      flash[:error] = "内容更新失败"
      render :edit
    end
  end

  private
    def set_tour
      @tour = Tour.first
    end

    def tour_params
      params.require(:tour).permit(:content)
    end
end
