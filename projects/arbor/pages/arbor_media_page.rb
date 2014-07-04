# encoding: utf-8

class ArborMediaPage 
  include PageObject

  PageObject.javascript_framework = :jquery

  link :media_button, :text => 'Selecionar mídia'
  a :select_media_button, :text => 'Selecionar'
   
  in_iframe :id => 'mediaBrowser' do |media_frame|

    link :choose_media, :class => 'button button-yes fake-ok', :frame => media_frame

    a :choose_media_for_doc, :class => 'button button-yes fake-submit media_default--media_browser_1 jquery-once-1-processed', :frame => media_frame

    link :library, :href => '#media-tab-library', :frame => media_frame
    a :library_for_doc, :href => '#media-tab-media_default--media_browser_1' , :frame => media_frame

    label :choosen_media, :text => 'quico1.jpg', :frame => media_frame
    label :choosen_document, :text => 'ebook_analytics_2.pdf', :frame => media_frame

  end
   
  def open_media_frame
    media_button
  end

  def open_media_frame_for_doc
    self.execute_script("document.getElementById('node_media_form_group_media').style='display:block';")
    select_media_button
  end
  
  def select_library_tab

    library
    
  end

  def select_library_tab_for_doc
    wait_for_ajax
    library_for_doc
  end
  
  def select_media

    choosen_media_element.click
   
    choose_media

  end

  def select_media_document
    choosen_document_element.click
    choose_media_for_doc
  end

end
