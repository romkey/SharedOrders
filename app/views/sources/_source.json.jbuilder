json.extract! source, :id, :name, :website, :address, :phone, :notes, :created_at, :updated_at
json.url source_url(source, format: :json)
