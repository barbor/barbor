#encoding: utf-8

Dado /^que é executada a bateria de testes '(.+)' contra a URL de base '(.+)'$/ do |test_project, test_url|
  on ArborTestPage do |page| page.execute_test test_project, test_url end
end

Dado /^que é executada, em modo headless, a bateria de testes '(.+)' contra a URL de base '(.+)'$/ do |test_project, test_url|
  on ArborTestPage do |page| page.execute_headless_test test_project, test_url end
end
