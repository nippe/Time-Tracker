class Client < ActiveRecord::Base
  has_many :engagements
  attr_accessible :name
end
