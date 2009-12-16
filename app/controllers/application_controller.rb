class ApplicationController < ActionController::Base
  helper :layout 
  protect_from_forgery
  filter_parameter_logging :password
end
