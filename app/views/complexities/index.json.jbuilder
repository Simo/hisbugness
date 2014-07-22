json.array!(@complexities) do |complexity|
  json.extract! complexity, :id, :description, :image, :color, :issue_id
  json.url complexity_url(complexity, format: :json)
end
