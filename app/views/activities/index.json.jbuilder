json.activities @activities, :id, :name

unless params[:engagement_id].nil?
    json.engagement do |json|
        json.id params[:engagement_id]
        json.url engagement_path(params[:engagement_id])
        json.json engagement_path(params[:engagement_id]) + ".json"
    end
end
