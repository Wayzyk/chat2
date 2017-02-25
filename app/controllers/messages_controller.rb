class MessagesController < ApplicationController
    def create
        ActionCable.server.broadcast 'messages',
                                    message: message_params[:body],
                                    username: cookies.signed[:username]
        head :ok
    end
    
    private
    
    def message_params
        params.require(:message).permit(:body)
    end
end
