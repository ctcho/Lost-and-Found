json.extract! item, :id, :title, :description, :category, :created_at, :updated_at
json.url item_url(item, format: :json)
