json.array!(@projects) do |project|
  json.extract! project, :id, :title, :description, :current_team_size, :desired_team_size, :headline
  json.url project_url(project, format: :json)
end
