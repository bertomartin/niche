class HomeController < ApplicationController
  #before_action :authenticate_user!
  def index
  end

  def services
  end

  def about
  end

  def shop
  end

  def blog
  end

  #sends email
  def create
    user_email = params["email"]
    user_name = params["name"]
    # ContactMailer.user_contact(user_email, user_name).deliver
    redirect_to home_path, notice: "Thank you for contacting me, I'll be in touch shortly."
  end
end
