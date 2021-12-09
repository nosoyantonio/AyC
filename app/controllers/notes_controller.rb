class NotesController < ApplicationController
  def create
      @agenda = Agenda.find(params[:agenda_id])
      @note = @agenda.notes.create(note_params)
      redirect_to agenda_path(@agenda)
    end

    private
      def note_params
        params.require(:note).permit(:body)
      end
end
