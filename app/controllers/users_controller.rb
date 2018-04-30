class UsersController < ApplicationController

def index
  @user = current_user
  @rooms = Room.all
end


end
