# encoding: utf-8

class ArborMediaLibraryPage
  include PageObject

  PageObject.javascript_framework = :jquery
  
  def library_access
    library
  end

end
