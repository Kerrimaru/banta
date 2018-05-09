//this is the same as what we have in our javascript function, so im not sure if we need this here?
App.banter = App.cable.subscriptions.create("BanterChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    // Called when there's incoming data on the websocket for this channel
  }
});


//ok yeah, so when I commented it all out just now everything still worked the same, sooooo
// i guess this is a bit redundant, but I will leave it for now.

//ALTHOUGH I have seen other tutorials putting it here just as it is