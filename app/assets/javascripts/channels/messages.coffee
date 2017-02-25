App.messages = App.cable.subscriptions.create 'MessageChannel',
    received: (data) ->
        $('#messages').append @renderMessage(data)
        
    renderMessage: (data) ->
        "<p><b>[#{data.username}]:</b> #{data.message}</p>"