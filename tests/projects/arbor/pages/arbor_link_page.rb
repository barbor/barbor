# encoding: utf-8

class ArborLinkPage
  include PageObject

  PageObject.javascript_framework = :jquery

  div :full_content, :id => 'content'

  def hit_link link_text
    wait_for_ajax

    link_href = self.full_content_element.html.match(/href=".+">#{link_text}/).to_s.sub('href="','').sub(">#{link_text}", '').sub('/','').sub(/".+$/, '').sub('"','')

    self.execute_script "window.location.href = '" + BASE_URL + link_href + "';"

  end

end
