class UsersController < ApplicationController

def index
  @user = current_user
  @rooms = Room.all
end
 
 def show
  @user = User.find(params[:id].to_i)  
  @rooms = Room.all
 end

end
