class UsersController < ApplicationController

def index
  @user = current_user
  @rooms = Room.all
end
 def show
  redirect_to(root_path)

 end
