class AgendasController < ApplicationController
  def index
    @agendas = Agenda.all
  end

  def show
    @agenda = Agenda.find(params[:id])
  end

  def new
    @agenda = Agenda.new
  end

  def create
    @agenda = Agenda.new(agenda_params)

   if @agenda.save
     redirect_to @agenda
   else
     render :new
   end
  end

  def edit
    @agenda = Agenda.find(params[:id])
  end

  def update
    @agenda = Agenda.find(params[:id])

    if @agenda.update(agenda_params)
      redirect_to @agenda
    else
      render :edit
    end
  end

  private
    def agenda_params
      params.require(:agenda).permit(:day)
    end
end
