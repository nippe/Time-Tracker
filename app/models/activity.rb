class Activity < ActiveRecord::Base
  belongs_to :engagement
  attr_accessible :description, :engagement_id, :hourly_rate, :name, :util
end
