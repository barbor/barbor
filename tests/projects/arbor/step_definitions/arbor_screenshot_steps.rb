#encoding: utf-8

Dado /^que a tela atual é '(.+)'% semelhante à última verificação$/ do |screenshot_threshold|
  on ArborScreenshotPage do |page| page.default_screenshot_comparison screenshot_threshold end
end

Dado /^que a tela atual é '(.+)'% semelhante à tela armazenada em '(.+)'$/ do |screenshot_threshold, screenshot_url|
  on ArborScreenshotPage do |page| page.url_screenshot_comparison screenshot_threshold, screenshot_url end
end
