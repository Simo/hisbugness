json.array!(@projects) do |project|
  json.extract! project, :id, :title, :starting_date, :finishing_date
  json.url project_url(project, format: :json)
end
