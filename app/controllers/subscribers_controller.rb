class SubscribersController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new
    @subscriber.email = params[:subscriber][:email]
    @subscriber.save
    render :new
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
