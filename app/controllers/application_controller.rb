class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => 'nippe', :password => ENV['TT_PASSWORD'] # TODO: Move out to config (not in source control)

  protect_from_forgery
end
