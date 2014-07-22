json.array!(@priorities) do |priority|
  json.extract! priority, :id, :description, :image, :color, :issue_id
  json.url priority_url(priority, format: :json)
end
