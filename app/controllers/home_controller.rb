class HomeController < ApplicationController
  def index
    flash.now[:notice] = "Welcome to the home page!"
  end
end
