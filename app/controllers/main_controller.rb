class MainController < ApplicationController
    def index
        flash[:alert] = "Invalid email or password"
    end
end
