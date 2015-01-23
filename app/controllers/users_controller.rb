class UsersController < ApplicationController
 # before_filter :authenticate_admin!, :except => [:show]
  before_filter :authenticate_user!
  
  def new 
    @user = User.new
  end
  
  def index
    @users = User.all 
  end
  
  def show
    @user = User.all
    @users = User.find(current_user.id)    
  end
  
  def update
  end
  
end
