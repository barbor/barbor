# encoding: utf-8

class MangoActivitystreamResultsPage
  include PageObject

  PageObject.javascript_framework = :jquery

  div :activitystream_imported_feeds_results, :class => 'messages status'

  def check_imported_feeds imported_feeds_number

    wait_for_ajax
    wait_for_ajax

    self.activitystream_imported_feeds_results.should =~ /#{imported_feeds_number}/

  end

end
