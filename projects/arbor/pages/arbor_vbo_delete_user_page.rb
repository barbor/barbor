# encoding: utf-8

class ArborAdminPeoplePage
  include PageObject

  direct_url BASE_URL + 'admin/people'
  text_field :user_name_field, :id => 'edit-name'
  button :apply, :id => 'edit-submit-admin-views-user'

  def find_user user_name
    self.user_name_field = user_name
    apply
  end

end
