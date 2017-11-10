class ContactController < ApplicationController
  def index
    if Contact.first
      @content = Contact.first.content
    else
      @content = ""
    end
  end
end
