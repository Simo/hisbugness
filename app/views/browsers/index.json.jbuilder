json.array!(@browsers) do |browser|
  json.extract! browser, :id, :name, :version, :issue_id
  json.url browser_url(browser, format: :json)
end
