class HomeController < ApplicationController
  def index
    @carsousels = Carsousel.order("no").all
  end
end
