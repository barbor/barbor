# encoding: utf-8

class MangoActivitystreamPage
  include PageObject
 
  PageObject.javascript_framework = :jquery

  direct_url BASE_URL + 'admin/dashboard'

  checkbox :activitystream_facebook_field, :value => 'facebook'

  checkbox :activitystream_instagram_field, :value => 'instagram'

  checkbox :activitystream_twitter_field, :value => 'twitter'

  #select_list :activitystream_import_account_field, :id => 'edit-account-import'
  select_list :activitystream_import_account_field, :index => 1

  button :import, :value => 'Importar'

  def import_stream activitystream_facebook, activitystream_instagram, activitystream_twitter, activitystream_import_account

    if activitystream_facebook == 'Sim'
      self.check_activitystream_facebook_field
    elsif activitystream_facebook == 'Não'
      self.uncheck_activitystream_facebook_field
    end

    if activitystream_instagram == 'Sim'
      self.check_activitystream_instagram_field
    elsif activitystream_instagram == 'Não'
      self.uncheck_activitystream_instagram_field
    end

    if activitystream_twitter == 'Sim'
      self.check_activitystream_twitter_field
    elsif activitystream_twitter == 'Não'
      self.uncheck_activitystream_twitter_field
    end

    self.activitystream_import_account_field = activitystream_import_account
   
    import

    wait_for_ajax
    sleep(10)

  end
end
