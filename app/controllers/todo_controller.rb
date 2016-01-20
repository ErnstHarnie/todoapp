class TodoController < ApplicationController
  def index
  end
  
  def new
  
  end
  
  def create
	   require 'net/http'
		source = 'http://localhost:3000/todo/new/'
		resp = Net::HTTP.get_response(URI.parse(source))
		data = resp.body
		result = JSON.parse(data)
		
		
		#@todo = Todo.new(params[:todo])
 
		#@todo.save
		#redirect_to @todo
  end
  
end
