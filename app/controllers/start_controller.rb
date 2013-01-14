
class StartController < ApplicationController
  respond_to :html

  def index
    @clients = Client.all
  end

  def register
  end



end
