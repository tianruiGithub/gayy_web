class Manage::MedicinesController < Manage::ApplicationController
  before_action :set_medicine, only: [:index, :edit, :update]
  
  def index
    if @medicine
      redirect_to edit_manage_medicine_path(@medicine)
    else
      redirect_to new_manage_medicine_path
    end
  end

  def new
    @medicine = Medicine.new
  end

  def create
    @medicine = Medicine.new(medicine_params)
    if @medicine.save
      flash[:success] = "内容更新成功"
      redirect_to manage_medicines_path
    else
      flash[:error] = "内容更新失败"
      render :new
    end
  end

  def edit
  end

  def update
    if @medicine.update(medicine_params)
      flash[:success] = "内容更新成功"
      redirect_to manage_medicines_path
    else
      flash[:error] = "内容更新失败"
      render :edit
    end
  end

  private
    def set_medicine
      @medicine = Medicine.first
    end

    def medicine_params
      params.require(:medicine).permit(:content)
    end
end
