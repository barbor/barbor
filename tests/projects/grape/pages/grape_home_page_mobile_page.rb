# encoding: utf-8

class GrapeHomePageMobilePage 
  include PageObject

  div :header,      :class => 'region region-header'
  div :footer,      :class => 'region region-bottom'
  div :page,        :id    => 'page'

  def verify_mobile_locale_options_available
  	wait_for_ajax
    footer_element.html.should =~ /language-link active/
  end

  def verify_desktop_lacale_options_not_available
    wait_for_ajax
    header_element.html.should_not =~ /language-link active/
  end

  def select_language language
    wait_for_ajax
    if language == 'English'
      self.execute_script "jQuery('.region-bottom .en a')[0].click();"
    end
    if language == 'Español'
      self.execute_script "jQuery('.region-bottom .es a')[0].click();"
    end
  end

  def verify_text text
    wait_for_ajax
    # self.page.should =~ /#{text}/
    self.html.should =~ /#{text}/
  end

  def active_lang_click
    wait_for_ajax
    self.execute_script "jQuery('.region-bottom .active a')[0].click();"
  end

  def lang_menu_visible
    wait_for_ajax
    footer_element.html.should =~ /menu-lang-active/
  end

  def lang_menu_not_visible
    wait_for_ajax
    footer_element.html.should_not =~ /menu-lang-active/
  end

  def click_anywhere
    wait_for_ajax
    self.execute_script "jQuery('.home-banner-expanded')[0].click();"
  end

end
