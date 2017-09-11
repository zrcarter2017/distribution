class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  require 'csv'
  def current_consumer
    @current_consumer ||= Consumer.find(session[:consumer_id]) if session[:consumer_id]
  end
  helper_method :current_consumer

  def authorize
    redirect_to '/login' unless current_consumer
  end

end
