class Manage::AddressesController < Manage::ApplicationController
  before_action :set_address, only: [:index, :edit, :update]
  
  def index
    if @adress
      redirect_to edit_manage_address_path(@address)
    else
      redirect_to new_manage_address_path
    end
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      flash[:success] = "内容更新成功"
      redirect_to manage_addresses_path
    else
      flash[:error] = "内容更新失败"
      render :new
    end
  end

  def edit
  end

  def update
    if @address.update(address_params)
      flash[:success] = "内容更新成功"
      redirect_to manage_adresses_path
    else
      flash[:error] = "内容更新失败"
      render :edit
    end
  end

  private
    def set_address
      @address = Address.first
    end

    def address_params
      params.require(:address).permit(:content)
    end
end
