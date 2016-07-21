json.array!(@up_votes) do |up_vote|
  json.extract! up_vote, :id, :picture_id, :user_id
  json.url up_vote_url(up_vote, format: :json)
end
