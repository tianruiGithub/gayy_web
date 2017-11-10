class IntroduceController < ApplicationController
  def index
    if Introduce.first
      @content = Introduce.first.content
    else
      @content = ""
    end
  end
end
