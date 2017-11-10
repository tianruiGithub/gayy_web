class Manage::CompaniesController < Manage::ApplicationController
  before_action :set_company, only: [:index, :edit, :update]
  
  def index
    if @company
      redirect_to edit_manage_company_path(@company)
    else
      redirect_to new_manage_company_path
    end
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:success] = "内容更新成功"
      redirect_to manage_companies_path
    else
      flash[:error] = "内容更新失败"
      render :new
    end
  end

  def edit
  end

  def update
    if @company.update(company_params)
      flash[:success] = "内容更新成功"
      redirect_to manage_companies_path
    else
      flash[:error] = "内容更新失败"
      render :edit
    end
  end

  private
    def set_company
      @company = Company.first
    end

    def company_params
      params.require(:company).permit(:content)
    end
end
