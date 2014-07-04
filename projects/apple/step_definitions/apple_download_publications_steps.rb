#encoding: utf-8

Quando /^clico no link de uma publicaçao$/ do
  on AppleDownloadPublicationsPage do |page| page.download_publication end
end
