json.extract! shared_order, :id, :name, :source_id, :starts, :ends, :created_at, :updated_at
json.url shared_order_url(shared_order, format: :json)
