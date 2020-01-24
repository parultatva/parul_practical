json.extract! tweet, :id, :user_id, :description, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
