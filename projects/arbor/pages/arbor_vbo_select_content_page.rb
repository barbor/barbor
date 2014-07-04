# encoding: utf-8

class ArborVboSlectContentPage
  include PageObject

  direct_url BASE_URL + 'admin/content'
  #direct_url BASE_URL + 'admin/people'
  text_field :content_title_field, :id => 'edit-title'
  button :apply, :id => 'edit-submit-administration-nodes'
  text_field :user_name_field, :id => 'edit-name'
  #button :apply, :id => 'edit-submit-admin-views-user'

  def find_content content_title
    self.content_title_field = content_title
    apply
  end
  
  def find_user user_name
    self.user_name_field = user_name
    apply
  end

end
