class MainController < ApplicationController
    def index
            # puts @current_user.nil?
            if session[:user_id]
                    @current_user = User.find_by(id: session[:user_id])
            end
    end
end
