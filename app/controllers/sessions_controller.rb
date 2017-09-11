class SessionsController < ApplicationController
  def create
    consumer = Consumer.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if consumer && consumer.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:consumer_id] = consumer.id
      redirect_to '/'
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  def destroy
    session[:consumer_id] = nil
    redirect_to '/login'
  end
end