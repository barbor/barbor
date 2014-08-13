# encoding: utf-8

class ArborErrorPage
  include PageObject

  direct_url BASE_URL
  
  def visit_page relative_url
    navigate_to BASE_URL + relative_url
  end
  
  def share_location
    
    
    #browser.send_keys :tab
    #browser.send_keys :tab
    #browser.send_keys :tab
    #browser.send_keys :space
    
    
    #browser.send_keys :tab, [:alt, "a"], [:alt, "a"], [:space, :space]
    
    #browser.send_keys [:alt, "a"], [:alt, "a"], :space
    
    #browser.send_keys [:alt, "a"], [:alt, "a"], "a"
    
    #sleep 1
    
    browser.send_keys [:alt, "a"], [:alt, "a"], "a" #, [:alt, "a"], :enter
    
    #sleep 1
    
    #browser.send_keys [:alt, "a"]
    
    #sleep 1
    
    #browser.send_keys :enter
    
    #sleep 3
    
    #browser.send_keys :space
    
    
    #browser.send_keys [:alt, "a"], [:alt, "a"]
    #browser.send_keys :space
    
    #browser.send_keys [:alt, :arrow_left]
    #browser.send_keys  :f6, "blablabla"
    
    #browser.send_keys [:alt], [:alt]
    
    #browser.send_keys [:tab], [:tab]
    
    #browser.send_keys :tab,:tab, :space]
    #browser.send_keys :tab, :tab, :tab, :space
    
    #browser.send_keys :tab, [:alt, :enter]
    
    #browser.send_keys :f11
    #sleep 2
    #browser.send_keys [:tab]
    #sleep 2
    #browser.send_keys ["a"]
    
  end

end
