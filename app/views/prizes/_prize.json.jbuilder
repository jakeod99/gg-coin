json.extract! prize, :id, :name, :description, :win_payout, :lose_payout, :activation_status, :created_at, :updated_at
json.url prize_url(prize, format: :json)
