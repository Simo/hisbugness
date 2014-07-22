json.array!(@enviroments) do |enviroment|
  json.extract! enviroment, :id, :descrizione, :address, :project_id, :issue_id
  json.url enviroment_url(enviroment, format: :json)
end
