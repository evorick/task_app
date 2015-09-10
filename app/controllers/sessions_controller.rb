class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    # find_by_provider_and_uid is Rails magic method to search Active Record using those field names
   # The next few lines says go look in our User table for a user with that provider and uid, and if you don't find them, create a new user with that info

    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    # Set the user_id in the session hash to this user's id
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end
end