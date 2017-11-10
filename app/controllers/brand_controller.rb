class BrandController < ApplicationController
  def index
    if Brand.first
      @content = Brand.first.content
    else
      @content = ""
    end
  end
end
