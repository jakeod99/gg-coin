json.extract! auction_item, :id, :name, :description, :status, :created_at, :updated_at
json.url auction_item_url(auction_item, format: :json)
