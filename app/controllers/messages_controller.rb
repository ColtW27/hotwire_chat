class MessagesController < ApplicationController
  before_action :set_room, only: %i[ new create ]

  def new
    @message = Message.new  # Initialize a new message instance
  end

  def create
     @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_path(@room), notice: 'Message was successfully created.'
    else
      render :new
    end
  end

  private
    def set_room
      @room = Room.find(params[:room_id])
    end

    def message_params
      params.require(:message).permit(:content)
    end
end

