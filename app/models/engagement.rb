class Engagement < ActiveRecord::Base
	belongs_to :client
	has_many :tasks
	
  attr_accessible :name, :client_id
end
