class CompanyController < ApplicationController
  def index
    if Company.first
      @content = Company.first.content
    else
      @content = ""
    end
  end
end
