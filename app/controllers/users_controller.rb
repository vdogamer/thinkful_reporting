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
    @user.update(user_params)    
    respond_with(@user)
    
    # @report_request.update(report_request_params)
    # respond_with(@report_request)
  end
  
  def user_params
    params.require(:user).permit(:username, :email, :request)
   end

   #def set_user
    #   @user = User.find params[:id]
   # end
  
end
