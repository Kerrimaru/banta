class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  #the next line calls the notify method directly after a new message is created
  after_create :notify

  def notify
    #this is broadcasting message for the room that this message was posted in
    #broadcasts to the banter channel with the appropriate room id, calls the to_html method
    # on the message, then sends that to recieved: in our script at rooms/views/show 
    ActionCable.server.broadcast "banter_channel:#{room_id}", message: to_html
  end

  def to_html
    rendered = ApplicationController.render(
      #i cant put a comment in the partial view, but go and look at it, then come back
      #that is the data being sent to our next step in the script found currently at rooms/views/show
      #sfter received:
      :partial => 'messages/message',
      :layout => false,
      :locals => {message: self}
    )
  end

  def to_json
    JSON.generate({body: body, user: user.name, created_at: created_at})
  end


end
