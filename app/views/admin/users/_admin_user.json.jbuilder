json.extract! admin_user, :id, :name, :email, :password_hash, :password_salt, :created_at, :updated_at
json.url admin_user_url(admin_user, format: :json)
