json.array!(@topics) do |topic|
  json.extract! topic, :id, :name, :course_id
  json.url topic_url(topic, format: :json)
end
