json.array!(@steps) do |step|
  json.extract! step, :id, :name, :description, :support, :video
  json.url step_url(step, format: :json)
end
