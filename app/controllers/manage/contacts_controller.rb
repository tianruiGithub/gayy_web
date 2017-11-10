class Manage::ContactsController < Manage::ApplicationController
  before_action :set_contact, only: [:index, :edit, :update]
  
  def index
    if @contact
      redirect_to edit_manage_contact_path(@contact)
    else
      redirect_to new_manage_contact_path
    end
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "内容更新成功"
      redirect_to manage_contacts_path
    else
      flash[:error] = "内容更新失败"
      render :new
    end
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      flash[:success] = "内容更新成功"
      redirect_to manage_contacts_path
    else
      flash[:error] = "内容更新失败"
      render :edit
    end
  end

  private
    def set_contact
      @contact = Contact.first
    end

    def contact_params
      params.require(:contact).permit(:content)
    end
end
