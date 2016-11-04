json.extract! my_fitbit, :id, :fitbit_id, :member_id, :steps, :created_at, :updated_at
json.url my_fitbit_url(my_fitbit, format: :json)