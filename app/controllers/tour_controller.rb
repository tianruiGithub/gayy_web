class TourController < ApplicationController
  def index
    if Tour.first
      @content = Tour.first.content
    else
      @content = ""
    end
  end
end
