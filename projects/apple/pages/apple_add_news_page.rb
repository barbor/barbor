# encoding: utf-8

class AppleAddNewsPage
  include PageObject

  direct_url BASE_URL + 'node/add/news'


  text_field :node_title_field, :name => 'title'

  checkbox :strategic_focus_field, :class => 'form-checkbox', :index => 10

  button :submit, :name => 'op'
  
  def add_news news_title, strategic_focus, news_body
    
    self.node_title_field = news_title
    
    if strategic_focus == 'Sim'
      self.check_strategic_focus_field
    elsif strategic_focus_field == 'Não'
      self.uncheck_strategic_focus_field
    end



    self.execute_script("CKEDITOR.instances['edit-body-und-0-value'].setData('" + news_body + "');")

    submit
  end
end
