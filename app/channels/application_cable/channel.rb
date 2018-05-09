module ApplicationCable
  class Channel < ActionCable::Channel::Base
  end
end
#this is the default parent channel that rails set up for us. It will encapsulate any shared logic between child channel classes (such as our banter_channel).
