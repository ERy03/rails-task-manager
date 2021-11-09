class TasksController < ApplicationController
  # /tasks
  def index
    @tasks = Task.all
  end
end
