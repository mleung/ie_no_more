# IeNoMore

module IENoMore
  
  def smack_down_ie
    render :partial => "ie_no_more/ie_upgrade_message" if request.env["HTTP_USER_AGENT"] =~ /MSIE 6+?/
  end
    
end