json.array!(@comments) do |comment|
  json.extract! comment, :id, :picture_id, :user_id, :comment
  json.url comment_url(comment, format: :json)
end
