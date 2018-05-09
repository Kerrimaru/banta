class BanterChannel < ApplicationCable::Channel
  
  def subscribed
    #this is a key (identifier), it will only stream to rooms matching this key
    #this method will be called when a user has subcribed to this channel
    #it is being related to/broadcast from from app/models/message file
    stream_from "banter_channel:#{params[:room]}"
  end

  def unsubscribed
    stop_all_streams
  end

  # def rant
  #   ActionCable.server.broadcast("banter_channel", :message => data['message'])
  # end

  #THIS IS NOT ACTUALLY DOING ANYTHING and can be removed! We are essentialy doing the same thing
  # in messages model to_html function. render_message is not even being called anywhere
  private

  def render_message(message)
    ApplicationController.render(partial: 'messages/message',
                                 locals: { message: message })
  end

end
