class TodoController < ApplicationController
  def index
      url = request.original_url
	uri = URI::parse(url)
	id = uri.path.split('/')[0]
	params = CGI::parse(uri.query)
	
	render :text => params.inspect  # print to screen

  #result = Todo.All
  end
  
  def new
  
    url = request.original_url
	uri = URI::parse(url)
	id = uri.path.split('/')[0]
	params = CGI::parse(uri.query)
	

	render :text => params.inspect # print to screen
	#params.save
  end
  
  def create
render plain: params[:todo].inspect
  end
  
  def edit
  @todo = Todo.find(params[:id])
end

def update
  @todo = Todo.find(params[:id])
 
  if @todo.update(todo_params)
    redirect_to @todo
  else
    render 'edit'
  end
end
  
private
  def todo_params
    params.require(:todo).permit(:startdate, :enddate, :description, :priority, :status)
  end
  
end
