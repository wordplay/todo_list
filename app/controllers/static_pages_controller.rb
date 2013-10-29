class StaticPagesController < ApplicationController
  def home
  	@todos = Todo.all.order(:position)
  end

  def about
  end
end
