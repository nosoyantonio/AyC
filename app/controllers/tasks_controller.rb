class TasksController < ApplicationController
  def create
    @agenda = Agenda.find(params[:agenda_id])
    @task = @agenda.tasks.create(task_params)
    redirect_to agenda_path(@agenda)
  end

  def destroy
    @agenda = Agenda.find(params[:agenda_id])
    @task = @agenda.tasks.find(params[:id])
    @task.destroy
    redirect_to agenda_path(@agenda)
  end

  private
    def task_params
      params.require(:task).permit(:name, :description, :code, :due_date)
    end
end
