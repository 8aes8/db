class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # sprawdź autoryzacje przed wywołaniem akcji
  before_action :authenticate_customer!
end
