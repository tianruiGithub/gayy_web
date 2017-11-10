class ValleyController < ApplicationController
  def index
    if Valley.first
      @content = Valley.first.content
    else
      @content = ""
    end
  end
end
