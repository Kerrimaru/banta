class UsersController < ApplicationController

def index
  @user = current_user
  @rooms = Room.all
end

 def show
  redirect_to(root_path)
  @user = User.find(params[:id].to_i)
  @rooms = Room.all
 end

 end
