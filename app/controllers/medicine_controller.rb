class MedicineController < ApplicationController
  def index
    if Medicine.first
      @content = Medicine.first.content
    else
      @content = ""
    end
  end
end
