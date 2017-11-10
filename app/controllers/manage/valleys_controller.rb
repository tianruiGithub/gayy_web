class Manage::ValleysController < Manage::ApplicationController
  before_action :set_valley, only: [:index, :edit, :update]
  
  def index
    if @adress
      redirect_to edit_manage_valley_path(@valley)
    else
      redirect_to new_manage_valley_path
    end
  end

  def new
    @valley = Valley.new
  end

  def create
    @valley = Valley.new(valley_params)
    if @valley.save
      flash[:success] = "内容更新成功"
      redirect_to manage_valleys_path
    else
      flash[:error] = "内容更新失败"
      render :new
    end
  end

  def edit
  end

  def update
    if @valley.update(valley_params)
      flash[:success] = "内容更新成功"
      redirect_to manage_valleys_path
    else
      flash[:error] = "内容更新失败"
      render :edit
    end
  end

  private
    def set_valley
      @valley = Valley.first
    end

    def valley_params
      params.require(:valley).permit(:content)
    end
end
