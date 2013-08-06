json.array!(@reviews) do |review|
  json.extract! review, :contents, :item_id, :user_id
  json.url review_url(review, format: :json)
end
