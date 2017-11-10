class AddressController < ApplicationController
  def index
    if Address.first
      @content = Address.first.content
    else
      @content = ""
    end
  end
end
