class Engagement < ActiveRecord::Base
	belongs_to :client
	has_many :activities
	
  attr_accessible :name, :client_id
end
