class RegistrationController < ApplicationController
# attr_accessor :email, :password
# def initialize(email, password)
#   @email = email
#   @password = password
# end
def new
end
def create
  email = params[:email]
  password = params[:password]
  con_password = params[:password_confirmation]
  @user = User.new(email: email, password: password, password_confirmation: con_password)

  if @user.save
        flash[:notice] = "sucessfully Registered"
        redirect_to login_path
  else
    render :new
  end
end
end
