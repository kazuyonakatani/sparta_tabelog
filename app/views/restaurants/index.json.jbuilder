json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :title, :tel, :address, :web
  json.url restaurant_url(restaurant, format: :json)
end
