# encoding: utf-8

class ArborLinkPage
  include PageObject

  PageObject.javascript_framework = :jquery

  def hit_link link_text
    link_href = self.html.match(/href=".+">#{link_text}</).to_s.sub('href="','').sub(">#{link_text}", '').sub('/','').sub(/".+$/, '').sub('"','')
    self.execute_script "window.location.href = '" + BASE_URL + link_href + "';"

  end

  def hit_link_by_number_and_text link_number, link_text
    link_href = self.html.scan(/href=".+">#{link_text}</)

    link_number = link_number.to_i
    link_number = link_number - 1

    link_href = link_href.at(link_number).to_s.sub('href="','').sub(">#{link_text}", '').sub('/','').sub(/".+$/, '').sub('"','')

    self.execute_script "window.location.href = '" + BASE_URL + link_href + "';"

  end


end
