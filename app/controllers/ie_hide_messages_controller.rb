class IeHideMessagesController < ApplicationController
  # This is used to close the message and hide it forever.
  def create
    cookies[:hide_ie_no_more_message] = '1'
    redirect_to '/'
  end
  
end