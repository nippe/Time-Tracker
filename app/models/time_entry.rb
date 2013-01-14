class TimeEntry < ActiveRecord::Base
  attr_accessible :activity_date, :description, :time_spent, :time_estimated, :util, :client_id, :engagement_id, :activity_id

  belongs_to :client
  belongs_to :engagement
  belongs_to :activity

#TODO: Take in year to from Url /time_entries/week/:year/:week_no
  scope :for_week, lambda {|week_number| where('activity_date between ? and ?', Date.commercial(Date.today.cwyear, week_number, 1), Date.commercial(Date.today.cwyear, week_number, 7))}

end
