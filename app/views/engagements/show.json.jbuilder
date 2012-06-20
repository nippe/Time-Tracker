json.id @engagement.id
json.name @engagement.name

json.client do |json|
    json.id @engagement.client.id
    json.name @engagement.client.name
end