# encoding: utf-8

class AppleResizePage
  include PageObject

  PageObject.javascript_framework = :jquery

  def resize_window width, height

    wait_for_ajax

    self.browser.window.resize_to(width, height)

    wait_for_ajax

  end
end
