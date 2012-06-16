class Task < ActiveRecord::Base
  attr_accessible :comment, :date, :description, :time_estimate, :time_spent
  belongs_to :engagement
end
