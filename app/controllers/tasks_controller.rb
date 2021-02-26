class TasksController < ApplicationController
  
  def index
    @tasks = Task.all  
  end
  
  def show
    @task = User.find(params[:id]).tasks
  end
end
