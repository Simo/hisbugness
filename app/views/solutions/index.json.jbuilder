json.array!(@solutions) do |solution|
  json.extract! solution, :id, :implemented, :implemented_at, :effort, :solved, :solved_at
  json.url solution_url(solution, format: :json)
end
