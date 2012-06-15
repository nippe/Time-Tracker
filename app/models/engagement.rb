class Engagement < ActiveRecord::Base
	belongs_to :client
  attr_accessible :name
end
