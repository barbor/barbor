# encoding: utf-8

class ArborTestPage
  include PageObject

  def execute_test test_project, test_url

    test_commnad = "cucumber --guess features/#{test_project}.feature PROJECT_NAME=#{test_project} BASE_URL=#{test_url} WEB_DRIVER=chrome LEAVE_BROWSER_OPENED=false"
    test_result = `#{test_commnad}`
    puts test_result
  end

  def execute_headless_test test_project, test_url

    test_commnad = "cucumber -p headless-no-results --guess features/#{test_project}.feature PROJECT_NAME=#{test_project} BASE_URL=#{test_url} WEB_DRIVER=chrome LEAVE_BROWSER_OPENED=false"
    test_result = `#{test_commnad}`
    puts test_result
  end

  def execute_no_alert_test test_project, test_url

    test_commnad = "cucumber -p headless-no-results --guess features/#{test_project}.feature PROJECT_NAME=#{test_project} BASE_URL=#{test_url} WEB_DRIVER=chrome SUB_SHOT=true LEAVE_BROWSER_OPENED=false"
    test_result = `#{test_commnad}`
    puts test_result
  end

  def execute_adhoc_test profile, hipchat_token, html_results_url, leave_browser_opened_value, generate_mp4, full_screen, test_project, test_url, web_driver

    test_commnad = "cucumber -p #{profile} --guess features/#{test_project}.feature PROJECT_NAME=#{test_project} BASE_URL=#{test_url} WEB_DRIVER=#{web_driver} LEAVE_BROWSER_OPENED=#{leave_browser_opened_value}"
    test_result = `#{test_commnad}`
    puts test_result
  end

  def execute_fully_adhoc_test framework_absolut_path, profile, project_path, test_project, hipchat_token, hipchat_room, screenshot_togle_value, test_url, html_results_url, web_driver
    test_command = "cd #{framework_path}/.tests; cucumber -p #{profile} --guess --format html -o #{project_path}/results/results.html features/#{test_project}.feature PROJECT_NAME=#{test_project} HIPCHAT_TOJEN=#{hipchat_token} HIPCHAT_ROOM=#{hipchat_room} FULLSHOT=#{screenshot_togle_value}, BASE_URL=#{test_url} HTML_RESULTS_URL=#{html_results_url} WEB_DRIVER=#{web_driver}"
    test_result = `#{test_commnad}`
    puts test_result
  end

end
