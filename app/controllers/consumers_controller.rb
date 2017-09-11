class ConsumersController < ApplicationController
  before_action :authorize

	def new
	end

	def create
		consumer = Consumer.new(consumer_params)
  		if consumer.save
    	  session[:consumer_id] = consumer.id
    	  redirect_to '/'
  		else
    	  redirect_to '/signup'
  		end
	end
private
    def consumer_params
  	  params.require(:consumer).permit(:name, :email, :password, :password_confirmation)
    end

end
