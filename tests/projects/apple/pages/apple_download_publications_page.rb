#encoding: utf-8

class AppleDownloadPublicationsPage
  include PageObject

  PageObject.javascript_framework = :jquery

  a :publication_link, :text => 'teste publicação'

  def download_publication
    wait_for_ajax
    publication_link
  end

end
