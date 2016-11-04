json.extract! member, :id, :username, :password_disgest, :name, :total_steps, :created_at, :updated_at
json.url member_url(member, format: :json)