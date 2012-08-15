
class TimeEntryController < ApplicationController
    respond_to :json


  def create
    time_entry = TimeEntry.new(params[:time_entry])

    if time_entry.save
      respond_with time_entry
    end

  end


end
