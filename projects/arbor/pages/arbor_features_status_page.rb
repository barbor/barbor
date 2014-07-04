# encoding: utf-8

class ArborFeaturesPage
  include PageObject

  PageObject.javascript_framework = :jquery

  direct_url BASE_URL + 'admin/structure/features'

  table :features_status_data, :id => 'features-form-table'

  def check_features_status features_status
    wait_for_ajax
    self.features_status_data.should_not =~ /#{features_status}/
  end

end
