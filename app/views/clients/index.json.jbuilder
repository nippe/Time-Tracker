json.array!(@clients) do |json, client|
   json.id client.id
   json.name client.name
   json.engagement_count client.engagements.count
   json.engagement_count client.engagements.count
end