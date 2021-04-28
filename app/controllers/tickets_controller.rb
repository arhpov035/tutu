class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[show edit update destroy]

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to @ticket #редирект на этот объек (show)
    else
      render :new # отрендерить на new render сохранит объект
    end
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:number)
  end
end