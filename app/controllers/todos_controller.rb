class TodosController < ApplicationController
  before_action :todo_find, only: [:show, :edit, :update, :destroy, :complete]
  before_action :all_todo, only: [:index, :list]
  def index
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to todos_path
  end

  def show
  end

  def edit
  end

  def update
    @todo.update(todo_params)
    redirect_to todos_path
  end

  def destroy
    @todo.destroy
    redirect_to todos_path
  end

  def complete
    @todo.completed = true
    @todo.save
    redirect_to todos_path
  end

  def list
  end

  private
  def todo_params
    params.require(:todo).permit(:description, :completed)
  end

  def todo_find
    @todo = Todo.find(params[:id])
  end

  def all_todo
    @todos = Todo.all
  end
end
