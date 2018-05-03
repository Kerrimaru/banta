class MessagesController < ApplicationController

  def create
    @room = Room.find(params[:id].to_i)
    #@user = current_user
    #@message = Message.new(message_params)    
    #@message.user = current_user
    @message = current_user.messages.new(message_params)
    @message.room_id = @room.id
    @messages = Message.all    
    if @message.save
      redirect_to "/rooms/#{@room.id}"
    else 
      render 'rooms/show'
    end
  end


  private

  def message_params
    params.require(:message).permit(:body, :room)
  end

end
