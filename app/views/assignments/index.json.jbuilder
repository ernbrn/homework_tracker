json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :name, :title, :description, :assinged, :due_date, :completed
  json.url assignment_url(assignment, format: :json)
end
