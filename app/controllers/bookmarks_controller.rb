class BookmarksController < ApplicationController
  def new
    @movies = Movie.new
  end
  
  def create
    @task = Task.new(movie_params)
    
      if @task.save
        redirect_to task_path(@task)
      else
        render :new
    end
    
    def update
    
    end
  end 


end
