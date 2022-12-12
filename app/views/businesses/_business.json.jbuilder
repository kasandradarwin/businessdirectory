json.extract! business, :id, :business_name, :category, :one_liner, :business_email, :business_phone, :description, :logo_url, :shop_online, :website, :created_at, :updated_at
json.url business_url(business, format: :json)
