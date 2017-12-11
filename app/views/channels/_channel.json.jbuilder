json.extract! channel, :id, :name, :channel_id, :category_id, :created_at, :updated_at
json.url channel_url(channel, format: :json)
