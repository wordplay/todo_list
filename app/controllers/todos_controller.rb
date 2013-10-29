class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end
 
  def create
    @todo = Todo.new(todo_params)
 
    if @todo.save
      redirect_to root_path
    else
      render 'new'
    end
  end
 
  def move_higher
    todo = Todo.find(params[:id])
    todo.move_higher

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { @todos = Todo.all.order(:position) }
    end
  end

  def move_lower
    todo = Todo.find(params[:id])
    todo.move_lower

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { @todos = Todo.all.order(:position) }
    end
  end
 
  private
  def todo_params
    params.require(:todo).permit(:message, :position)
  end
end