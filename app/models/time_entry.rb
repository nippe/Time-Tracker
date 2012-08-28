class TimeEntry < ActiveRecord::Base
  attr_accessible :activity_date, :description, :time_spent, :time_estimated, :util, :client_id, :engagement_id, :activity_id

  belongs_to :client
  belongs_to :engagement
  belongs_to :activity
end
