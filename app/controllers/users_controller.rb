class UsersController < ApplicationController
 # before_filter :authenticate_admin!, :except => [:show]
  
  def new 
    @user = User.new
  end
  
  def index
    @users = User.all 
  end
  
  def show
    @user = User.find_by_username(:username)
    puts @user
  end
  
end
