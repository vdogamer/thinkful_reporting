class HomeController < ApplicationController
  #before_filter :authenticate_admin!
  before_filter :authenticate_user!
  
  def index
  end
 
end