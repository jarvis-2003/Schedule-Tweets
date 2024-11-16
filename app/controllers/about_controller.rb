class AboutController < ApplicationController
  def index
    # we can write here : render "index" or if some other file name exists in the view/about/other_name_file.html.erb
  end
  def login
  end

  def userLogin
    email = params[:email]
    pass = params[:password]
    @user = User.find_by(email: email)
    if @user && @user.authenticate(pass)
      session[:user_id] = @user.id
      # @temp = session[:user_id]
      redirect_to root_path
    end
  end
end
