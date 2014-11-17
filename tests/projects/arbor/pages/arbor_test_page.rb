# encoding: utf-8

class ArborTestPage
  include PageObject

  def execute_test test_project, test_url

    test_commnad = "cucumber --guess features/#{test_project}.feature PROJECT_NAME=#{test_project} BASE_URL=#{test_url} WEB_DRIVER=chrome LEAVE_BROWSER_OPENED=true"
    test_result = `#{test_commnad}`
    puts test_result
  end

  def execute_headless_test test_project, test_url

    test_commnad = "cucumber -p fullshot-ci --guess features/#{test_project}.feature PROJECT_NAME=#{test_project} BASE_URL=#{test_url} WEB_DRIVER=chrome LEAVE_BROWSER_OPENED=true"
    test_result = `#{test_commnad}`
    puts test_result
  end


end
