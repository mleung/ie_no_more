# IeNoMore

module IENoMore
  
  def smack_down_ie6
    render :partial => "ie_no_more/ie_upgrade_message" if is_ie6?
  end
  
  def hide_if_ie6
    raise_if_no_block
    yield unless is_ie6?
  end
  
  def show_if_ie6
    raise_if_no_block
    yield if is_ie6?
  end
  
  def is_ie6?
    request.env["HTTP_USER_AGENT"] =~ /MSIE 6+?/
  end
  
  private
    def raise_if_no_block
      raise 'We need a block here' unless block_given?
    end
    
end