class Manage::IntroducesController < Manage::ApplicationController
  before_action :authenticate_admin!
  before_action :set_introduce, only: [:index, :edit, :update]
  
  def index
    if @introduce
      redirect_to edit_manage_introduce_path(@introduce)
    else
      redirect_to new_manage_introduce_path
    end
  end

  def new
    @introduce = Introduce.new
  end

  def create
    @introduce = Introduce.new(introduce_params)
    if @introduce.save
      flash[:success] = "内容更新成功"
      redirect_to manage_introduces_path
    else
      flash[:error] = "内容更新失败"
      render :new
    end
  end

  def edit
  end

  def update
    if @introduce.update(introduce_params)
      flash[:success] = "内容更新成功"
      redirect_to manage_introduces_path
    else
      flash[:error] = "内容更新失败"
      render :edit
    end
  end

  private
    def set_introduce
      @introduce = Introduce.first
    end

    def introduce_params
      params.require(:introduce).permit(:content)
    end
end
