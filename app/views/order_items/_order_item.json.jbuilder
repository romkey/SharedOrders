json.extract! order_item, :id, :shared_order, :user, :min_quantity, :max_quantity, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
