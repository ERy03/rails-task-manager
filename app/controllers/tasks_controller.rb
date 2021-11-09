class TasksController < ApplicationController
  # /tasks/new
  def new
    @task = Task.new
  end
  # creating a new task

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path(@task)
    else
      render 'new.html.erb'
    end
  end

  # /tasks
  def index
    @tasks = Task.all
  end

  # /tasks/:id
  def show
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

end
