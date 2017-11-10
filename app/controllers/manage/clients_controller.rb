class Manage::ClientsController < Manage::ApplicationController
  before_action :authenticate_admin!
  
  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      flash[:success] = "信息创建成功"
      redirect_to manage_clients_path
    else
      flash[:error] = "信息创建失败"
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    if @client.update(client_params)
      flash[:success] = "信息更新成功"
      redirect_to manage_clients_path
    else
      flash[:error] = "信息更新失败"
      render :edit
    end
  end
  
  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to manage_clients_index_path
  end

  private
    def client_params
      params.require(:client).permit(:title, :content)
    end
end
