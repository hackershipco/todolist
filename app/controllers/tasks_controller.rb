class TasksController < ApplicationController
  def index
  end

  def create
    @task = Task.new(task_params)
    respond_to do |format|
      format.json { render json: @task }
    end
  end

  def update
  end

  def index
  end

  def show
  end

  def destroy
  end

  private
    def task_params
      params.require(:task).permit(:title, :description, :archived, :priority)
    end

end
