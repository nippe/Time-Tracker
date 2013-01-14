
class TimeEntryController < ApplicationController
    respond_to :json

  # POST
  def create
    @time_entry = TimeEntry.new(params[:time_entry])
    if @time_entry.save
      respond_with @time_entry
    end
  end

  # GET
  def week
    week_number = params[:week_number]
    @time_entries_for_week = TimeEntry.where(:activity_date => (Date.commercial(2012, 37, 1))..(Date.commercial(2012, 37, 7)))
  end


end
