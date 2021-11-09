class TasksController < ApplicationController
  before_action :set_task, only: [:destroy, :update, :edit, :show]
  # /tasks/new
  def new
    @task = Task.new
  end
  # creating a new task

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
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
  end

  # /tasks/:id/edit
  def edit
  end

  # patch
  def update
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render 'edit.html.erb'
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
