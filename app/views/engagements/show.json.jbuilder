json.(@engagement, :id, :name)

json.client do |json|
    json.id @engagement.client.id
    json.name @engagement.client.name
end