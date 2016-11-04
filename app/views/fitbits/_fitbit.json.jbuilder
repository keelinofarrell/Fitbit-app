json.extract! fitbit, :id, :name, :picture, :battery_life, :colour, :display, :created_at, :updated_at
json.url fitbit_url(fitbit, format: :json)