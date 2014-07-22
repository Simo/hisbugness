json.array!(@issues) do |issue|
  json.extract! issue, :id, :project_id, :insert_date, :component, :feature, :description, :note, :accepted, :accepted_at
  json.url issue_url(issue, format: :json)
end
